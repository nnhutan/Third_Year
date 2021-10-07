import html from '../core.js'

export default function Slider() {

    return html`
    <div class="slider-container">
        <div class="slider">
            <div class="slide-image-item">
                <img src="./assets/images/property_1-min.jpg" alt="img" class="slider-img"/>
                <div class="slide-image__info">
                    <ul class="slide-image__info-list">
                        <li class ="slide-image__info-item">
                            <i class="fas fa-bath"></i>
                            <strong>2</strong>
                        </li>
                        <li class ="slide-image__info-item">
                            <i class="fas fa-bed"></i>
                            <strong>4</strong>
                        </li>
                        <li class ="slide-image__info-item">
                            <i class="fas fa-home"></i>
                            <strong>
                            120
                            </strong>
                        </li>
                    </ul>
                </div>

                <div class="slide-image__sale-info">
                    <strong class = "slide-image__sale-new-price">$999,000</strong>
                    <p class = "slide-image__sale-old-price">$1,000,2999</p>
                    <p class = "slide-image__sale-addr">2 Zwar Place, Florey</p>
                </div>
            </div>

            <div class="slide-image-item ">
                <img src="./assets/images/property_2-min.jpg" alt="img" class="slider-img"/>
                 <div class="slide-image__info">
                    <ul class="slide-image__info-list">
                        <li class ="slide-image__info-item">
                            <i class="fas fa-bath"></i>
                            <strong>2</strong>
                        </li>
                        <li class ="slide-image__info-item">
                            <i class="fas fa-bed"></i>
                            <strong>4</strong>
                        </li>
                        <li class ="slide-image__info-item">
                            <i class="fas fa-home"></i>
                            <strong>
                            120
                            </strong>
                        </li>
                    </ul>
                </div>

                <div class="slide-image__sale-info">
                    <strong class = "slide-image__sale-new-price">$999,000</strong>
                    <p class = "slide-image__sale-old-price">$1,000,2999</p>
                    <p class = "slide-image__sale-addr">2 Zwar Place, Florey</p>
                </div>
            </div>

            <div class="slide-image-item ">
                <img src="./assets/images/property_3-min.jpg" alt="img" class="slider-img"/>
                 <div class="slide-image__info">
                    <ul class="slide-image__info-list">
                        <li class ="slide-image__info-item">
                            <i class="fas fa-bath"></i>
                            <strong>2</strong>
                        </li>
                        <li class ="slide-image__info-item">
                            <i class="fas fa-bed"></i>
                            <strong>4</strong>
                        </li>
                        <li class ="slide-image__info-item">
                            <i class="fas fa-home"></i>
                            <strong>
                            120
                            </strong>
                        </li>
                    </ul>
                </div>

                <div class="slide-image__sale-info">
                    <strong class = "slide-image__sale-new-price">$999,000</strong>
                    <p class = "slide-image__sale-old-price">$1,000,2999</p>
                    <p class = "slide-image__sale-addr">2 Zwar Place, Florey</p>
                </div>
            </div>
            

        </div>
    </div>
    `
}