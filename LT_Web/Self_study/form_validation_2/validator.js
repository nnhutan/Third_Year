function Validator(formSelector = {}) {

    function getParent(element, selector) {
        while (element.parentElement) {
            if (element.parentElement.matches(selector))
                return element.parentElement
            else element = element.parentElement
        }
    }

    var formRules = {}

    var validationRules = {
        required: function (value) {
            return value ? undefined : 'vui lòng nhập trường này'
        },

        email: function (value) {
            var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value) ? undefined : 'Vui lòng nhập email'
        },

        min: function (min) {
            return function (value) {
                return value.length >= min ? undefined : `Vui lòng nhập tối thiểu ${min} kí tự`
            }
        }
    }

    var formElement = document.querySelector(formSelector)

    if (formElement) {
        var inputs = formElement.querySelectorAll('[name][rules]')

        for (var input of inputs) {

            var rules = input.getAttribute('rules').split('|')
            for (var rule of rules) {
                var ruleFunc = validationRules[rule]
                if (rule.includes(':')) {
                    var ruleInfo = rule.split(':')
                    rule = ruleInfo[0]
                    ruleFunc = validationRules[rule](ruleInfo[1])
                }
                if (Array.isArray(formRules[input.name])) {
                    formRules[input.name].push(ruleFunc)
                }
                else {
                    formRules[input.name] = [ruleFunc]
                }
            }

            input.onblur = handleValidate;
            input.oninput = handleClearError;
        }

        function handleValidate(event) {
            var rules = formRules[event.target.name]

            var errMessage
            rules.some(rule => {
                return errMessage = rule(event.target.value)
            })

            if (errMessage) {
                var formGroup = getParent(event.target, '.form-group')
                if (formGroup) {
                    formGroup.classList.add('invalid')
                    var formMessage = formGroup.querySelector('.form-message')
                    if (formMessage) formMessage.innerHTML = errMessage
                }
            }

            return !errMessage
        }

        function handleClearError(event) {
            var formGroup = getParent(event.target, '.form-group')
            if (formGroup.classList.contains('invalid')) {
                formGroup.classList.remove('invalid')
                var formMessage = formGroup.querySelector('.form-message')
                if (formMessage) formMessage.innerHTML = ''
            }
        }


        formElement.onsubmit = event => {
            event.preventDefault()
            var isValid = true
            for (var input of inputs) {
                if (!handleValidate({
                    target: input
                })) isValid = false
            }

            if (isValid) {
                if (typeof this.onSubmit === 'function') {
                    var enableInputs = formElement.querySelectorAll('[name]')

                    var formValues = Array.from(enableInputs).reduce((values, input) => {
                        switch (input.type) {
                            case 'radio':
                                if (input.matches(':checked')) values[input.name] = input.value
                                break
                            case 'checkbox':
                                if (input.matches(':checked')) {
                                    if (!Array.isArray(values[input.name])) values[input.name] = [input.value]
                                    else values[input.name].push(input.value)
                                }
                                break
                            case 'file':
                                values[input.name] = input.files
                                break
                            default:
                                values[input.name] = input.value
                                break
                        }
                        return values
                    }, {})

                    this.onSubmit(formValues)
                }
                else formElement.submit()
            }
        }
    }


}