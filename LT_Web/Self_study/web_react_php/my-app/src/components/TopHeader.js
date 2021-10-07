import React from "react";
import { Telephone } from "react-bootstrap-icons";
import Container from "react-bootstrap/Container";
import "./TopHeader.css";

function TopHeader() {
  return (
    <div
      style={{
        backgroundColor: "#F5F6F9",
        color: "#777",
        fontSize: "1.4rem",
        height: "40px",
      }}
    >
      <Container
        fluid="xl"
        className="d-flex justify-content-between h-100 top-header"
      >
        <div className="d-flex align-items-center">
          <a href="#1" className="text-decoration-none">
            <Telephone style={{ marginRight: "6px" }} />
            Call: +84 36 275 1710
          </a>
        </div>
        <div className="d-flex align-items-center">
          <ul className="list-unstyled d-flex justify-content-between mb-0">
            <li style={{ marginRight: "40px" }} role="button">
              About Us
            </li>
            <li role="button">Sign In / Sign Up</li>
          </ul>
        </div>
      </Container>
    </div>
  );
}

export default TopHeader;
