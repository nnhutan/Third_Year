import html from '../core.js'

export default function Copyright() {
    return html`
<div class="copyright">
    <div class="grid wide">
        <div class="row copyright-wrap">
            <div class="col l-6 c-12">
                <p>Copyright ©2021. All Rights Reserved. — Designed with love by Untree.co • License</p>
            </div>
            <div class="col l-6 link-terms-privacy c-12">
                <a href="#">Terms</a>
                <a href="#">Privacy</a>
            </div>
        </div>
    </div>
</div>
`
}