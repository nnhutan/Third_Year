import html from "./core.js"
import Header from "./components/Header.js"
import Slider from "./components/Slider.js"
import ContentService from "./components/ContentService.js"
import PropertiesSlider from "./components/PropertiesSlider.js"
import ContentBenefit from "./components/ContentBenefit.js"
import MoreInfo from "./components/MoreInfo.js"
import Member from "./components/Member.js"
import Footer from "./components/Footer.js"
import Copyright from "./components/Copyright.js"
import SideBarMenu from "./components/SideBarMenu.js"

export default function App() {
    return html`
        <div id = "wrapper-all-document">
        ${Header()}
        ${Slider()}
        ${ContentService()}
        ${PropertiesSlider()}
        ${ContentBenefit()}
        ${MoreInfo()}
        ${Member()}
        ${Footer()}
        ${Copyright()}
        </div>
        ${SideBarMenu()}
        `
}