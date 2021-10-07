import html from '../core.js';
import NavBar from './NavBar.js';


export default function Header() {
    return html`
    <div class="header">
        <div class="grid wide header-container">
            <div class="header-wrap">
                <div class="header-logo">
                    <a href="index.html" class="header-logo__link">Homespace </a>
                    <span>.</span>
                </div>
                    
                ${NavBar()}
            </div>
        </div>
    </div>
    `
}

