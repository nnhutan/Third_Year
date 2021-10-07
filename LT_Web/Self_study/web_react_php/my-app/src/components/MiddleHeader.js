import React from "react";
import { BagDashFill, Cart3, Search } from "react-bootstrap-icons";
import "./MiddleHeader.css";

function MiddleHeader() {
  return (
    <div className="bg-white">
      <div className="container d-flex justify-content-between">
        <div className="logo d-flex align-items-center">
          <BagDashFill className="logo-icon" />
          NhuTan
        </div>
        <div className="search d-flex align-items-center">
          <Search size="22px" className="icon-search" />
          <input type="text" placeholder="Search products ..." />
        </div>
        <div className="cart d-flex align-items-center">
          <div className="cart-group position-relative">
            <Cart3 className="cart-icon" />
            <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill">
              2<span className="visually-hidden">unread messages</span>
            </span>
          </div>
        </div>
      </div>
    </div>
  );
}

export default MiddleHeader;
