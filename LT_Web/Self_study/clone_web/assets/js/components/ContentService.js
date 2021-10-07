import html from '../core.js'

export default function ContentService() {
    return html`
        <div class="content-service">
            <div class="content-service__container grid wide">
                <div class="row sm-gutter content-service-wrap">
                    <div class="col l-6 c-12">
                        <div class="content-service__item">
                            <div class="content-service__item-icon">
                                <i class="fas fa-users"></i>
                            </div>
                            <div class="content-service__item-info">
                                <h2 class="content-service__item-title">Community of Agents</h2>
                                <p class="content-service__item-desc">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-6 c-12">
                    <div class="content-service__item">
                            <div class="content-service__item-icon">
                                <i class="fas fa-building"></i>
                            </div>
                            <div class="content-service__item-info">
                                <h2 class="content-service__item-title">1000+ Properties</h2>
                                <p class="content-service__item-desc">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-6 c-12">
                    <div class="content-service__item">
                            <div class="content-service__item-icon">
                                <i class="fas fa-life-ring"></i>
                            </div>
                            <div class="content-service__item-info">
                                <h2 class="content-service__item-title">Customer Service</h2>
                                <p class="content-service__item-desc">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col l-6 c-12">
                    <div class="content-service__item">
                            <div class="content-service__item-icon">
                                <i class="far fa-comment-alt"></i>
                            </div>
                            <div class="content-service__item-info">
                                <h2 class="content-service__item-title">Blog Posts</h2>
                                <p class="content-service__item-desc">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    `
}