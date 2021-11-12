document.addEventListener("DOMContentLoaded", function () {
  let li = document.querySelectorAll(".timeline li");
  let p = document.querySelectorAll(".content p");
  for(let i = 0; i < li.length; i++) {
    li[i].onmouseover = function () {
      p[i].classList.remove("d-none");
    };
    li[i].onmouseout = function () {
      p[i].classList.add("d-none");
    };
  }
}, false);

function displayMap(num) {
  let button = document.querySelectorAll(".contact button");
  let iframe = document.querySelectorAll(".map iframe");
  for(let i = 0; i < button.length; i++) {
    if(i == num - 1) continue;
    iframe[i].classList.add("d-none");
  }
  iframe[num-1].classList.toggle("d-none");
}

function displayDescribe(num) {
  let a = document.querySelectorAll(".position p.title a");
  let describe = document.querySelectorAll(".position .describe");
  for(let i = 0; i < a.length; i++) {
    if(i == num - 1) continue;
    describe[i].classList.add("d-none");
  }
  describe[num-1].classList.toggle("d-none");
}