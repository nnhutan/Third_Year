import React from 'react'
import './NavBar.css'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore';
function NavBar() {
    return (
        <div className="navbar-list">
            <a href="1" className="navbar-item item-active">Home</a>
            <a href="1" className="navbar-item">Dropdown
                <ExpandMoreIcon />
            </a>
            <a href="1" className="navbar-item">Buy</a>
            <a href="1" className="navbar-item">Rent</a>
            <a href="1" className="navbar-item">About</a>
            <a href="1" className="navbar-item">Contact Us</a>
            <a href="1" className="navbar-item">Sign up</a>
            <a href="1" className="navbar-item login-btn">Login</a>
        </div>
    )
}

export default NavBar
