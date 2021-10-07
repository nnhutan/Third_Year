import html from '../core.js'

export default function PropertiesSlider() {
    return html`
        <div class="properties-slider">
            <div class="properties-slider__header">
                <div class="grid wide">
                    <div class="row properties-slider-wrap">
                    <div class="col l-6 m-6 c-6">
                    <h2 class="properties-slider__heading">Properties</h2>
                    </div>
                    <div class="col l-6 m-6 c-6 properties-slider__nav-wrap">
                        <div class="properties-slider__nav">
                            <button class="properties-slider__nav-btn js-btn-prev">
                                <i class="fas fa-long-arrow-alt-left"></i>
                            </button>
                            <button class="properties-slider__nav-btn js-btn-next">
                                <i class="fas fa-long-arrow-alt-right"></i>
                            </button>
                        </div>
                    </div>
                    </div>
                </div>
            </div>

            <div class="properties-slider__container">
                <div class="properties-slider__item">
                    <img src="./assets/images/property_1-min.jpg" alt="img" class="properties-slider__item-img"/>

                    
                    <div class="properties-slider__item-info">
                        <strong class="properties-slider__item-price">$849,200</strong>
                        
                        <ul class="properties-slider__item-info-list">
                            <li class ="properties-slider__item-info-item">
                                <i class="fas fa-bath"></i>
                                <strong>2</strong>
                            </li>
                            <li class ="properties-slider__item-info-item">
                                <i class="fas fa-bed"></i>
                                <strong>4</strong>
                            </li>
                            <li class ="properties-slider__item-info-item">
                                <i class="fas fa-home"></i>
                                <strong>
                                120
                                </strong>
                            </li>
                        </ul>

                        <div class="properties-slider__item-location-wrap">
                            <div class="properties-slider__item-location">
                                <span class="properties-slider__item-location-title">location:</span>
                                <span class="properties-slider__item-location-desc">2 Zwar Place, Florey</span>
                            </div>
    
                            <button class="properties-slider__item-expand">
                                <i class="fas fa-long-arrow-alt-right"></i>
                            </button>
                        </div>
                    </div>

                </div>

                <div class="properties-slider__item">
                    <img src="./assets/images/property_2-min.jpg" alt="img" class="properties-slider__item-img"/>


                    <div class="properties-slider__item-info">
                        <strong class="properties-slider__item-price">$849,200</strong>

                        <ul class="properties-slider__item-info-list">
                            <li class ="properties-slider__item-info-item">
                                <i class="fas fa-bath"></i>
                                <strong>2</strong>
                            </li>
                            <li class ="properties-slider__item-info-item">
                                <i class="fas fa-bed"></i>
                                <strong>4</strong>
                            </li>
                            <li class ="properties-slider__item-info-item">
                                <i class="fas fa-home"></i>
                                <strong>
                                120
                                </strong>
                            </li>
                        </ul>

                        <div class="properties-slider__item-location-wrap">
                            <div class="properties-slider__item-location">
                                <span class="properties-slider__item-location-title">location:</span>
                                <span class="properties-slider__item-location-desc">2 Zwar Place, Florey</span>
                            </div>

                            <button class="properties-slider__item-expand">
                                <i class="fas fa-long-arrow-alt-right"></i>
                            </button>
                        </div>
                    </div>

                </div>

                <div class="properties-slider__item">
                    <img src="./assets/images/property_3-min.jpg" alt="img" class="properties-slider__item-img"/>


                    <div class="properties-slider__item-info">
                        <strong class="properties-slider__item-price">$849,200</strong>

                        <ul class="properties-slider__item-info-list">
                            <li class ="properties-slider__item-info-item">
                                <i class="fas fa-bath"></i>
                                <strong>2</strong>
                            </li>
                            <li class ="properties-slider__item-info-item">
                                <i class="fas fa-bed"></i>
                                <strong>4</strong>
                            </li>
                            <li class ="properties-slider__item-info-item">
                                <i class="fas fa-home"></i>
                                <strong>
                                120
                                </strong>
                            </li>
                        </ul>

                        <div class="properties-slider__item-location-wrap">
                            <div class="properties-slider__item-location">
                                <span class="properties-slider__item-location-title">location:</span>
                                <span class="properties-slider__item-location-desc">2 Zwar Place, Florey</span>
                            </div>

                            <button class="properties-slider__item-expand">
                                <i class="fas fa-long-arrow-alt-right"></i>
                            </button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    `
}