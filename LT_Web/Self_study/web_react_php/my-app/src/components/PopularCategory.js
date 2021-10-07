import React from "react";
import "./PopularCategory.css";
import img1 from "../demo-4/cats/1.png";
import img2 from "../demo-4/cats/2.png";
import img3 from "../demo-4/cats/3.png";
import img4 from "../demo-4/cats/4.png";
import img5 from "../demo-4/cats/5.png";
import img6 from "../demo-4/cats/6.png";

function PopularCategory() {
  return (
    <div className="popular-category mt-5">
      <div className="container">
        <h2 className="title text-center mb-4">Explore Popular Categories</h2>
        <div className="row">
          <div className="col-xl-2 popular-category-item">
            <div className="img-wrap-category">
              <span>
                {" "}
                <img src={img1} alt="category" />
              </span>
            </div>
            <h3 className="popular-category-title">Computer & Laptop</h3>
          </div>
          <div className="col-xl-2 popular-category-item">
            <div className="img-wrap-category">
              <span>
                {" "}
                <img src={img2} alt="category" />
              </span>
            </div>
            <h3 className="popular-category-title">Digital Cameras</h3>
          </div>
          <div className="col-xl-2 popular-category-item">
            <div className="img-wrap-category">
              <span>
                {" "}
                <img src={img3} alt="category" />
              </span>
            </div>
            <h3 className="popular-category-title">Smart Phones</h3>
          </div>
          <div className="col-xl-2 popular-category-item">
            <div className="img-wrap-category">
              <span>
                {" "}
                <img src={img4} alt="category" />
              </span>
            </div>
            <h3 className="popular-category-title">Televisions</h3>
          </div>
          <div className="col-xl-2 popular-category-item">
            <div className="img-wrap-category">
              <span>
                {" "}
                <img src={img5} alt="category" />
              </span>
            </div>
            <h3 className="popular-category-title">Audio</h3>
          </div>
          <div className="col-xl-2 popular-category-item">
            <div className="img-wrap-category">
              <span>
                {" "}
                <img src={img6} alt="category" />
              </span>
            </div>
            <h3 className="popular-category-title">Smart Watches</h3>
          </div>
        </div>
      </div>
    </div>
  );
}

export default PopularCategory;
