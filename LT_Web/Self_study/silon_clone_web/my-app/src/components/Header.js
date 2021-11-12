import React, { useRef } from "react";
import HeaderNavbar from "./HeaderNavbar";
import Badge from "@mui/material/Badge";
import { styled } from "@mui/material/styles";

const StyledBadge = styled(Badge)(({ theme }) => ({
  "& .MuiBadge-badge": {
    backgroundColor: "#ff5353",
    color: "#fff",
    fontSize: "8px",
    borderRadius: "100%",
    padding: "0",
    height: "16px",
    minWidth: "16px",
  },
}));

function Header() {
  const navbar = useRef();

  const handleClick = () => {
    navbar.current.classList.contains("phone:hidden")
      ? navbar.current.classList.remove("phone:hidden")
      : navbar.current.classList.add("phone:hidden");
  };

  return (
    <div className="header bg-white relative">
      <div className="container mx-auto flex justify-between items-center">
        <div className="logo">
          <a href="" className="">
            <img
              src="https://demo.themeies.com/silon/images/logo.png"
              alt="logo"
            />
          </a>
        </div>

        <HeaderNavbar ref={navbar} />

        <div className="header-icon flex">
          <a
            href="#"
            className="sm:hidden p-2.5 sm:hover:text-primary transition duration-200 ease"
            onClick={handleClick}
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              className="h-5 w-5"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth={2}
                d="M4 6h16M4 12h16M4 18h16"
              />
            </svg>
          </a>

          <a
            href="#"
            className="p-2.5 sm:hover:text-primary transition duration-200 ease"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              className="h-5 w-5"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth={2}
                d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"
              />
            </svg>
          </a>
          <a
            href="#"
            className="p-2.5 sm:hover:text-primary transition duration-200 ease"
          >
            <StyledBadge badgeContent={0} showZero>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                className="h-5 w-5"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  strokeWidth={2}
                  d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"
                />
              </svg>
            </StyledBadge>
          </a>
          <a
            href="#"
            className="p-2.5 sm:hover:text-primary transition duration-200 ease"
          >
            <StyledBadge badgeContent={9} showZero>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                className="h-5 w-5"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  strokeWidth={2}
                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"
                />
              </svg>
            </StyledBadge>
          </a>
        </div>
      </div>
    </div>
  );
}

export default Header;
