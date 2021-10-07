import html from '../core.js'

export default function MoreInfo() {
    return html`
<div class="more-info">
    <div class="more-info__container grid wide">
        <div class="row more-info-wrap">
            <div class="col l-6 m-12 c-12">
                <div class="row more-info__list-wrap">
                    <div class="col l-8 m-12 c-12">
                        <ul class="more-info__list">
                            <li class="more-info__item">
                                <span class="more-info__item-icon"><i class="fas fa-bed"></i></span>
                                <span class="more-info__item-text">Right at the coast of the Semantics Vokalia and
                                    Consonantia</span>
                            </li>

                            <li class="more-info__item">
                                <span class="more-info__item-icon"><i class="fas fa-building"></i></span>
                                <span class="more-info__item-text">Separated they live in Bookmarksgrove right at
                                    large</span>
                            </li>

                            <li class="more-info__item">
                                <span class="more-info__item-icon"><i class="fas fa-car"></i></span>
                                <span class="more-info__item-text">And if she hasn’t been rewritten then large language
                                    ocean.</span>
                            </li>

                            <li class="more-info__item">
                                <span class="more-info__item-icon"><i class="fas fa-map"></i></span>
                                <span class="more-info__item-text">And if she hasn’t been rewritten then large language
                                    ocean.</span>
                            </li>

                            <li class="more-info__item">
                                <span class="more-info__item-icon"><i class="fas fa-shower"></i></span>
                                <span class="more-info__item-text">And if she hasn’t been rewritten then Vokalia and
                                    Consonantia</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col l-6 m-12 c-12">
                <div class="more-info__staff-img">
                    <img src="./assets/images/img_portrait_1.jpg" alt="portrait">
                </div>
            </div>
        </div>
    </div>
</div>
`
}