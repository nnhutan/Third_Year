var coursesAPI = 'http://localhost:3000/courses';

function start() {
    getCourses(renderCourse);
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
            <li>
                <h4>${a.name}</h4>
                <p>${a.description}</p>
            </li>
        `
    })
    list.innerHTML = htmls.join('');
}