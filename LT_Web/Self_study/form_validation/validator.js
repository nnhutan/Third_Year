function Validator(options) {
    var selectorRules = {}
    function getParent(element, selector) {
        while (element.parentElement) {
            if (element.parentElement.matches(selector)) {
                return element.parentElement
            }
            element = element.parentElement
        }
    }

    function validate(inputElement, rule) {
        var rules = selectorRules[rule.selector]
        var errElement = getParent(inputElement, options.formGroupSelector).querySelector(options.errSelector)
        var errMessage
        for (var i = 0; i < rules.length; i++) {
            switch (inputElement.type) {
                case 'radio':
                case 'checkbox':
                    errMessage = rules[i](formElement.querySelector(rule.selector + ':checked'))
                    break
                default:
                    errMessage = rules[i](inputElement.value)
                    break
            }
            if (errMessage)
                break
        }
        if (errMessage) {
            errElement.innerHTML = errMessage
            getParent(inputElement, options.formGroupSelector).classList.add('invalid')
        }
        else {
            errElement.innerHTML = ''
            getParent(inputElement, options.formGroupSelector).classList.remove('invalid')
        }
        return !!errMessage
    }

    // Lấy ra form đăng ký
    var formElement = document.querySelector(options.form)

    if (formElement) {
        formElement.onsubmit = function (e) {
            e.preventDefault()

            var isFormValid = true

            options.rules.forEach(rule => {
                var inputElement = formElement.querySelector(rule.selector)
                var isErr = validate(inputElement, rule)
                if (isErr) isFormValid = false
            })

            if (isFormValid) {
                if (typeof options.onSubmit === 'function') {
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

                    options.onSubmit(formValues)
                }
                else {
                    formElement.submit();
                }
            }
        }
        options.rules.forEach(rule => {
            /**
             * Những ô nhập sẽ có những nguyên tắc nhất định
             * từ những nguyên tắc đã được định nghĩa
             * ta lấy ra những element tương ứng cần áp dụng
             * những nguyên tắc đó. Sau đó tiến hành lắng nghe
             * những sự kiện xảy ra. Với những rule sẽ có những
             * cách để test khác nhau và trả về những thông báo khác nhau
             */
            if (!Array.isArray(selectorRules[rule.selector]))
                selectorRules[rule.selector] = [rule.test]
            else selectorRules[rule.selector].push(rule.test)

            var inputElements = Array.from(formElement.querySelectorAll(rule.selector))
            inputElements.forEach(inputElement => {
                if (inputElement) {
                    inputElement.onblur = () => {
                        validate(inputElement, rule)
                    }

                    inputElement.oninput = () => {
                        var errElement = getParent(inputElement, options.formGroupSelector).querySelector(options.errSelector)
                        errElement.innerHTML = ''
                        getParent(inputElement, options.formGroupSelector).classList.remove('invalid')
                    }
                }
            })
        });
    }
}

Validator.isRequired = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            return value ? undefined : message || 'Vui lòng nhập trường này'
        }
    }
}

Validator.isEmail = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value) ? undefined : message || 'Trường này phải là email'
        }
    }
}

Validator.minLength = function (selector, min, message) {
    return {
        selector: selector,
        test: function (value) {
            return value.length >= min ? undefined : message || `Vui lòng nhập tối thiểu ${min} ký tự`
        }
    }
}

Validator.isConfirmed = function (selector, confirm, message) {
    return {
        selector: selector,
        test: function (value) {
            return value === confirm() ? undefined : message || 'Giá trị nhập vào không chính xác'
        }
    }
}