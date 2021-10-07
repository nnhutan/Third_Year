import html from '../core.js'

export default function Footer() {
    return html`
<div class="footer">
    <div class="grid wide">
        <div class="row footer-wrap">
            <div class="col l-4 m-6 c-12 footer-item-wrap">
                <div class="footer-item">
                    <h3 class="footer-item__heading">
                        About Dinh Nhu Tan
                    </h3>
                    <p class="footer-item__text-about">
                        Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there
                        live the blind texts.
                    </p>
                    <div class="footer-list-social">
                        <div class="footer-list-social-item">
                            <i class="fab fa-dribbble"></i>
                        </div>
                        <div class="footer-list-social-item">
                            <i class="fab fa-linkedin-in"></i>
                        </div>
                        <div class="footer-list-social-item">
                            <i class="fab fa-twitter"></i>
                        </div>
                        <div class="footer-list-social-item">
                            <i class="fab fa-instagram"></i>
                        </div>
                        <div class="footer-list-social-item">
                            <i class="fab fa-facebook-f"></i>
                        </div>
                    </div>
                </div>
            </div>

           
                    <div class="col l-2 m-6 c-6 footer-item-wrap">
                        <div class="footer-item">
                            <h3 class="footer-item__heading">
                                Pages
                            </h3>
                            <ul class="footer-item__list-text">
                                <li class="footer-item__text">Service</li>
                                <li class="footer-item__text">Terms</li>
                                <li class="footer-item__text">Privacy</li>
                                <li class="footer-item__text">Buy</li>
                                <li class="footer-item__text">Sell</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col l-2 m-6 c-6 footer-item-wrap">
                        <div class="footer-item">
                            <h3 class="footer-item__heading">
                                Resources
                            </h3>
                            <ul class="footer-item__list-text">
                                <li class="footer-item__text">Blog</li>
                                <li class="footer-item__text">About</li>
                                <li class="footer-item__text">Contact</li>
                            </ul>
                        </div>
                    </div>
            
            <div class="col l-4 m-6 c-12 footer-item-wrap">
                <div class="footer-item">
                    <h3 class="footer-item__heading">
                        Contact
                    </h3>
                    <ul class="footer-item__list-text">
                        <li class="footer-item__text">
                            <span class="footer-contact-icon"><i class="fas fa-envelope"></i></span>
                            nhutan2001@gmail.com
                        </li>
                        <li class="footer-item__text">
                            <span class="footer-contact-icon"><i class="fas fa-phone-alt"></i></span>
                            +84 36 275 1710
                        </li>
                        <li class="footer-item__text">
                            <span class="footer-contact-icon"><i class="fas fa-map-marker-alt"></i></span>
                            Hung Thuy, Le Thuy, Quang Binh
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
`
}