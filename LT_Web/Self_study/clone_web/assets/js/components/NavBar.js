import html from '../core.js'
export default function NavBar() {
    return html`

<div class="header-navbar__icon js-menu-btn"><i class="fas fa-bars"></i></div>
<div class="header-navbar">
    <a href="index.html" class="header-navbar__item item-active">Home</a>
    <div class="header-navbar__item header-navbar__item--has-child">
        Dropdown
        <i class="fas fa-chevron-down"></i>
        <div class="header-navbar__sub">
            <ul class="header-navbar__sub-list">
                <li class="header-navbar__sub-item">
                    <a href="index.html">Elements</a>
                </li>

                <li class="header-navbar__sub-item header-navbar__item--has-child">

                    <a href="index.html">Menu Two <i class="fas fa-chevron-right"></i></a>

                    <div class="header-navbar__sub-sub">
                        <ul class="header-navbar__sub-sub-list">

                            <li class="header-navbar__sub-sub-item">
                                <a href="index.html">Sub Menu One</a>
                            </li>

                            <li class="header-navbar__sub-sub-item">
                                <a href="index.html">Sub Menu Two</a>
                            </li>

                            <li class="header-navbar__sub-sub-item">
                                <a href="index.html">Sub Menu Three</a>
                            </li>
                        </ul>
                    </div>

                </li>

                <li class="header-navbar__sub-item">
                    <a href="index.html">Menu Three</a>
                </li>
            </ul>
        </div>
    </div>
    <a href="index.html" class="header-navbar__item">Buy</a>
    <a href="index.html" class="header-navbar__item">Rent</a>
    <a href="index.html" class="header-navbar__item">About</a>
    <a href="index.html" class="header-navbar__item">Contact Us</a>
    <a href="index.html" class="header-navbar__item">Sign up</a>
    <button href="index.html" class="header-navbar__item login-btn">Login</button>
</div>
`
}