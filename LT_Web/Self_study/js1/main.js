var coursesAPI = 'http://localhost:3000/courses';
function start() {
    getCourses(renderCourse);
    handelCreateForm();
}

start();


function getCourses(callback) {
    fetch(coursesAPI)
        .then(response => response.json())
        .then(callback)
}

function renderCourse(course) {
    var list = document.querySelector('.list');
    var htmls = course.map(a => {
        return `
        <li  class = "item-${a.id}">
        <h4>${a.name}</h4>
        <p>${a.description}</p>
        <button onclick = "delete1(${a.id})">Xóa</button>
        </li>
        `
    })
    list.innerHTML = htmls.join('');
}

function handelCreateForm() {
    var btn = document.querySelector('#create')
    btn.addEventListener('click', function () {
        var name = document.querySelector('input[name="name"]').value;
        var description = document.querySelector('input[name="description"]').value;
        var data = {
            name: name,
            description: description
        }
        createCourse(data, () => getCourses(renderCourse))
    })
}

function createCourse(data, callback) {
    var options = {
        method: 'POST',
        body: JSON.stringify(data),
        headers: {
            'Content-Type': 'application/json',
        },
    }
    fetch(coursesAPI, options)
        .then(response => response.json())
        .then(callback)

}

function delete1(data) {
    var options = {
        method: 'DELETE',
        body: null,
        headers: {
            'Content-Type': 'application/json',
        },
    }
    fetch(`${coursesAPI}/${data}`, options)
        .then(response => response.json())
        .then(() => {
            var item = document.querySelector(`.item-${data}`)
            if (item) {
                item.remove();
            }
        })
}