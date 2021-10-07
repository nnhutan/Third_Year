import html from '../core.js'

export default function SideBarMenu() {
return html`

<div class="sidebar-menu hide">
    <div class="sidebar-menu__close">
        <i class="fas fa-times"></i>
    </div>

    <div class="sidebar-menu__wrap">
        <ul class="sidebar-menu__list">
            <li class="sidebar-menu__item item-active">Home</li>
            <li class="sidebar-menu__item">
                Dropdown
                <span class="sidebar-menu__item-icon-expand js-btn-expand-sub">
                    <i class="fas fa-chevron-down"></i>
                </span>
                <div class="sidebar-menu__sub hide">
                    <ul class="sidebar-menu__sub-list">
                        <li class="sidebar-menu__item">Elements</li>
                        <li class="sidebar-menu__item">
                            Menu Two
                            <span class="sidebar-menu__item-icon-expand js-btn-expand-sub-sub">
                                <i class="fas fa-chevron-down"></i>
                            </span>
                            <div class="sidebar-menu__sub-sub hide">
                                <ul class="sidebar-menu__sub-sub-list">
                                    <li class="sidebar-menu__item">Sub Menu One</li>
                                    <li class="sidebar-menu__item">Sub Menu Two</li>
                                    <li class="sidebar-menu__item">Sub Menu Three</li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-menu__item">Menu Three</li>
                    </ul>
                </div>
            </li>
            <li class="sidebar-menu__item">Buy</li>
            <li class="sidebar-menu__item">Rent</li>
            <li class="sidebar-menu__item">About</li>
            <li class="sidebar-menu__item">Contact Us</li>
            <li class="sidebar-menu__item">Sign up</li>
            <li class="sidebar-menu__item item-active">Login</li>
        </ul>
    </div>
</div>
`
}