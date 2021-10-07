import React from 'react'
import './NavBar.css'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore';
import { Paper } from '@material-ui/core';
import KeyboardArrowRightIcon from '@material-ui/icons/KeyboardArrowRight';

function NavBar() {
    return (
        <div className="navbar-list">
            <a href="index.html" className="navbar-item item-active">Home</a>
            <div href="index.html" className="navbar-item navbar-item-dropdown">Dropdown
                <ExpandMoreIcon />
                <Paper elevation={1} square>
                    <ul className="dropdown-list">
                        <li className="dropdown-item"><a href="index.html">Elements</a></li>
                        <li className="dropdown-item dropdown-item-has-child">
                            <a href="index.html">Menu Two</a>
                            <KeyboardArrowRightIcon />
                            <Paper elevation={1} square>
                                <ul className="sub-dropdown-list">
                                    <li className="dropdown-item">
                                        <a href="index.html">Sub Menu One</a>
                                    </li>
                                    <li className="dropdown-item">
                                        <a href="index.html">Sub Menu Two</a>
                                    </li>
                                    <li className="dropdown-item">
                                        <a href="index.html">Sub Menu Three</a>
                                    </li>
                                </ul>
                            </Paper>
                        </li>
                        <li className="dropdown-item">
                            <a href="index.html">Menu Three</a>
                        </li>
                    </ul>
                </Paper>
            </div>
            <a href="index.html" className="navbar-item">Buy</a>
            <a href="index.html" className="navbar-item">Rent</a>
            <a href="index.html" className="navbar-item">About</a>
            <a href="index.html" className="navbar-item">Contact Us</a>
            <a href="index.html" className="navbar-item">Sign up</a>
            <a href="index.html" className="navbar-item login-btn">Login</a>
        </div>
    )
}

export default NavBar
