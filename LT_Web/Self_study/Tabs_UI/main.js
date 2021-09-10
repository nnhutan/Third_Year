const $ = document.querySelector.bind(document);
const $$ = document.querySelectorAll.bind(document);

const tabs = $$('.tab-item');
const pains = $$('.tab-pane');
const tabActive = $('.tab-item.active');
const line = $('.tabs .line');

line.style.left = tabActive.offsetLeft + 'px'
line.style.width = tabActive.offsetWidth + 'px'

tabs.forEach((tab, index)=>{
    tab.addEventListener('click', function(){
        $('.tab-item.active').classList.remove('active');
        $('.tab-pane.active').classList.remove('active');
        this.classList.add('active');
        pains[index].classList.add('active');
        line.style.left = this.offsetLeft + 'px'
        line.style.width = this.offsetWidth + 'px'
    })
})