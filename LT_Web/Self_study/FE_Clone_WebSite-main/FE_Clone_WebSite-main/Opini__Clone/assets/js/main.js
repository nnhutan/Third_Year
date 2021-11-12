/*===== Show Navbar =====*/
const showMenu = (navId, toggleId) => {
    const toggle = document.getElementById(toggleId),
        nav = document.getElementById(navId);

    if (nav && toggle) {
        toggle.addEventListener("click", () => {
            toggle.classList.toggle("bx-x");
            nav.classList.toggle("show-menu");
        });
    }
};
showMenu("nav-menu", "nav-toggle");

/*===== NAV__LINK  =====*/
const listNavLink = document.querySelectorAll(".nav__link");
function navLinkTab() {
    listNavLink.forEach((l) => l.classList.remove("active-link"));
    this.classList.add("active-link");
}
listNavLink.forEach((l) => l.addEventListener("click", navLinkTab));

/*===== Remove Menu Mobile =====*/
const navLink = document.querySelectorAll(".nav__link");

function linkAction() {
    const navMenu = document.getElementById("nav-menu"),
        toggle = document.getElementById("nav-toggle");
    // When we click on each nav__link, we remove the show-menu class
    navMenu.classList.remove("show-menu");
    toggle.classList.remove("bx-x");
}
navLink.forEach((n) => n.addEventListener("click", linkAction));

/*===== Scroll Header =====*/
const scrollHeader = () => {
    const header = document.getElementById("header");
    if (this.scrollY >= 10) {
        header.classList.add("scroll-header");
    } else {
        header.classList.remove("scroll-header");
    }
};
window.addEventListener("scroll", scrollHeader);

/*==================== SHOW SCROLL TOP ====================*/
function scrollTop() {
    const scrollTop = document.getElementById("scroll-top");
    // When the scroll is higher than 560 viewport height, add the show-scroll class to the a tag with the scroll-top class
    if (this.scrollY >= 560) scrollTop.classList.add("show-scroll");
    else scrollTop.classList.remove("show-scroll");
}
window.addEventListener("scroll", scrollTop);

/*===== CASE STUDY TAB =====*/
const listStudy = document.querySelectorAll(".case__item");
const listContent = document.querySelectorAll(".case__tab-item");
function caseStudyTab() {
    listStudy.forEach((l) => l.classList.remove("active-tab"));
    this.classList.add("active-tab");
    var caseName = this.textContent.trim();
    listContent.forEach(function (content) {
        content.classList.remove("content-active");
        if (content.dataset.case == caseName) {
            content.classList.add("content-active");
        }
    });
}
listStudy.forEach((l) => l.addEventListener("click", caseStudyTab));

/*===== OWL CAROUSEL =====*/
$(window).on('load', () => {
    $(".featured__slides").owlCarousel({
        loop: true,
        margin: 30,
        autoplay: true,
        autoplayTimeout: 8000,
        autoplayHoverPause: true,
        nav: true,
        navText: ['<i class="pe-7s-angle-left"></i>', '<i class="pe-7s-angle-right"></i>'],
        dots: false,
        responsive: {
            0: {
                items: 1,
            },
            600: {
                items: 2,
                autoplayTimeout: 10000,
            },
            1200: {
                items: 3,
                autoplayTimeout: 12000,
            },
            2000: {
                items: 3,
                autoplayTimeout: 12000,
            },
        },
    }),
        $(".services__slides").owlCarousel({
            autoplayTimeout: 8000,
            loop: true,
            nav: true,
            dots: false,
            margin: 30,
            autoplayHoverPause: true,
            autoplay: true,
            items: 1,
            navText: ["<i class='pe-7s-angle-left'></i>", "<i class='pe-7s-angle-right'></i>"],
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1440: {
                    items: 3
                }
            },
        });
    $(".feedback__slides").owlCarousel({
        loop: true,
        margin: 30,
        autoplay: false,
        autoplayTimeout: 8000,
        autoplayHoverPause: true,
        items: 1,
        dots: true,
    });
})
