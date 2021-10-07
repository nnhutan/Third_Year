import html from '../core.js'

export default function Member() {
    return html`
<div class="member">
    <div class="grid wide member-container">
        <div class="row member-container-wrap">
            <div class="col l-4 m-12 c-12">
                <div class="member-item">
                    <p class="member-item__info">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque animi omnis quas voluptate
                        aliquam dolore facere,
                        exercitationem, quos nihil iusto.
                    </p>

                    <div class="member-item__wrap">
                        <img src="./assets/images/person_1.jpg" alt="member">
                        <div class="member-item__name-company">
                            <strong class="member-item__name">
                                John Smith
                            </strong>
                            <span class="member-item__company">
                                CTO - Slack, Inc.
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col l-4 m-12 c-12">
                <div class="member-item">
                    <p class="member-item__info">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque animi omnis quas voluptate
                        aliquam dolore facere,
                        exercitationem, quos nihil iusto.
                    </p>

                    <div class="member-item__wrap">
                        <img src="./assets/images/person_2.jpg" alt="member">
                        <div class="member-item__name-company">
                            <strong class="member-item__name">
                                John Smith
                            </strong>
                            <span class="member-item__company">
                                CTO - Slack, Inc.
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col l-4 m-12 c-12">
                <div class="member-item">
                    <p class="member-item__info">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque animi omnis quas voluptate
                        aliquam dolore facere,
                        exercitationem, quos nihil iusto.
                    </p>

                    <div class="member-item__wrap">
                        <img src="./assets/images/person_3.jpg" alt="member">
                        <div class="member-item__name-company">
                            <strong class="member-item__name">
                                John Smith
                            </strong>
                            <span class="member-item__company">
                                CTO - Slack, Inc.
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
`
}