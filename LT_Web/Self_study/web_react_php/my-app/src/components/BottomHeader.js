import React from "react";
import { ChevronDown, Lightning, List, XLg } from "react-bootstrap-icons";
import "./BottomHeader.css";

function BottomHeader() {
  return (
    <div className="bg-white bottom-header">
      <div className="container d-flex justify-content-between align-items-center">
        <div className="category">
          <div className="d-flex justify-content-between align-items-center">
            <List className="list-icon" />
            <XLg className="close-icon" />
            <p>Danh Mục</p>
            <ul className="category-list">
              <li className="category-item">Item 1</li>
              <li className="category-item">Item 2</li>
              <li className="category-item">Item 3</li>
              <li className="category-item">Item 4</li>
              <li className="category-item">Item 5</li>
            </ul>
          </div>
          <ChevronDown className="down-icon" />
        </div>
        <div className="navbar">
          <ul className="navbar-list">
            <li className="navbar-item active">
              <a href="#1">Trang chủ</a>
            </li>
            <li className="navbar-item">
              <a href="#1">Giới thiệu</a>
            </li>
            <li className="navbar-item">
              <a href="#1">Dịch vụ</a>
            </li>
            <li className="navbar-item">
              <a href="#1">Sản phẩm</a>
            </li>
            <li className="navbar-item">
              <a href="#1">Bảng giá</a>
            </li>
            <li className="navbar-item">
              <a href="#1">Liên hệ</a>
            </li>
            <li className="navbar-item">
              <a href="#1">Tin tức</a>
            </li>
          </ul>
        </div>
        <div className="saleoff-info">
          <Lightning className="" />
          <span>Giảm giá lên đến 30%</span>
        </div>
      </div>
    </div>
  );
}

export default BottomHeader;
