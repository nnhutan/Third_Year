/* SHOW MENU */
const showMenu = (toggleId, navId, searchId, searchBoxId) => {
    const toggle = document.getElementById(toggleId),
          nav = document.getElementById(navId),
          search = document.getElementById(searchId),
          searchBox = document.getElementById(searchBoxId)
    // Menu
    if (toggle && nav) {
        toggle.addEventListener('click', () => {
            nav.classList.toggle('show-menu')
        })
    }
    // Search Box
    if (search && searchBox) {
        search.addEventListener('click', () => {
            searchBox.classList.toggle('show-search')
        })
    }
}
showMenu('nav-toggle','nav-menu','nav-search','nav-searchBox');

/*==================== REMOVE MENU MOBILE / ACTIVE LINK ====================*/
const navLink = document.querySelectorAll('.nav__link')

function linkAction(){
    navLink.forEach(n => n.classList.remove('active-link'))
    this.classList.add('active-link')
    // When we click on each nav__link, we remove the show-menu class
    const navMenu = document.getElementById('nav-menu')
    navMenu.classList.remove('show-menu')
}
navLink.forEach(n => n.addEventListener('click', linkAction))

/*==================== CHANGE BACKGROUND HEADER ====================*/ 
function scrollHeader(){
    const nav = document.getElementById('header')
    // When the scroll is greater than 200 viewport height, add the scroll-header class to the header tag
    if(this.scrollY >= 96) nav.classList.add('scroll-header'); else nav.classList.remove('scroll-header')
}
window.addEventListener('scroll', scrollHeader)

/*==================== SWIPER JS ====================*/

$('.owl-carousel').owlCarousel({
    loop:true,
    margin: 10,
    autoplay:true,
    autoplayTimeout:3000,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        900:{
            items:3
        }
    }
})