import React from 'react'
import './Header.css'
import NavBar from './NavBar';
function Header() {
    return (
        <div className="header" >
            <div className="header-group">
                <div className="logo">
                    <a href="index.html" className="logo-link">Homespace </a><span>.</span>
                </div>

                <div>
                    <NavBar />
                </div>
            </div>
        </div>
    )
}

export default Header
