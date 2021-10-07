import React from "react";
import Carousel from "react-bootstrap/Carousel";
import slide1 from "../demo-4/slider/slide-1.png";
import slide2 from "../demo-4/slider/slide-2.png";
import "./Slider.css";

function Slider() {
  return (
    <div className="slider">
      <Carousel touch={true}>
        <Carousel.Item>
          <img className="d-block w-100" src={slide1} alt="First slide" />
          <Carousel.Caption className="intro-caption">
            <h3 className="intro-subtitle">Deals and Promotions</h3>
            <h1 className="intro-title">Beats by</h1>
            <h1 className="intro-title">Dre Studio 3</h1>
            <div className="intro-price">
              <sup className="intro-old-price">$349,95</sup>
              <span className="intro-new-price">$279</span>
            </div>
            <button className="btn btn-primary btn-shopmore">
              Shop More <i className="bi bi-arrow-right "></i>
            </button>
          </Carousel.Caption>
        </Carousel.Item>
        <Carousel.Item>
          <img className="d-block w-100" src={slide2} alt="Second slide" />

          <Carousel.Caption className="intro-caption">
            <h3 className="intro-subtitle">Deals and Promotions</h3>
            <h1 className="intro-title">Beats by Team</h1>
            <h1 className="intro-title">Dre Studio 3</h1>
            <div className="intro-price">
              <sup className="intro-old-price">$349,95</sup>
              <span className="intro-new-price">$279</span>
            </div>
            <button className="btn btn-primary btn-shopmore">
              Shop More <i className="bi bi-arrow-right"></i>
            </button>
          </Carousel.Caption>
        </Carousel.Item>
        <Carousel.Item>
          <img className="d-block w-100" src={slide1} alt="Third slide" />

          <Carousel.Caption className="intro-caption">
            <h3 className="intro-subtitle">Deals and Promotions</h3>
            <h1 className="intro-title">Beats by Team</h1>
            <h1 className="intro-title">Dre Studio 3</h1>
            <div className="intro-price">
              <sup className="intro-old-price">$349,95</sup>
              <span className="intro-new-price">$279</span>
            </div>
            <button className="btn btn-primary  btn-shopmore">
              Shop More <i className="bi bi-arrow-right"></i>
            </button>
          </Carousel.Caption>
        </Carousel.Item>
      </Carousel>
    </div>
  );
}

export default Slider;
