import React, { useRef } from 'react'
import Paper from '@mui/material/Paper';

const HeaderNavbar = React.forwardRef((props, ref) => {

    const childMenu = useRef()

    const handleMouseEnter = () => {
        childMenu.current.style.visibility = 'visible';
        childMenu.current.style.opacity = '1';

    }

    const handleMouseLeave = () => {
        childMenu.current.style = null;
    }


    const handelClick = () => {
        childMenu.current.classList.contains('phone:hidden') ? childMenu.current.classList.remove('phone:hidden') : childMenu.current.classList.add('phone:hidden')
    }


    return (
        <div className="phone:absolute phone:top-full phone:w-full phone:hidden phone:animate-fadeInUp_400" ref={ref}>
            <div className="flex phone:flex-col phone:bg-white phone:w-11/12 phone:mx-auto phone:shadow-lg">
                <div className=" uppercase text-sm font-medium phone:py-4 px-4 py-10 sm:hover:text-primary sm:flex relative sm:cursor-pointer transition duration-200 ease" onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave} onClick={handelClick}>
                    <div className="phone:flex phone:justify-between sm:flex">
                        <div>home</div>
                        <span className="flex justify-center items-center h-5 w-5 block ">
                            <svg xmlns="http://www.w3.org/2000/svg" className="h-3 w-3 relative mb-0.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
                            </svg>
                        </span>
                    </div>

                    <div className="phone:animate-fadeInUp_200 phone:hidden sm:absolute flex flex-col sm:top-full sm:left-0 z-10 sm:invisible transition-opacity sm:opacity-0 duration-300 ease rounded-sm shadow bg-white" ref={childMenu}>
                        <a href="" className="uppercase text-sm text-black font-medium p-5 sm:hover:text-primary hover:bg-gray-100 w-56 leading-3 transition duration-200 ease">home 01</a>
                        <a href="" className="uppercase text-sm text-black font-medium p-5 sm:hover:text-primary hover:bg-gray-100 w-56 leading-3 transition duration-200 ease">home 02</a>
                        <a href="" className="uppercase text-sm text-black font-medium p-5 sm:hover:text-primary hover:bg-gray-100 w-56 leading-3 transition duration-200 ease">home 03</a>
                    </div>
                </div>
                <a href="" className="uppercase text-sm font-medium phone:py-4 px-4 py-10 sm:hover:text-primary transition duration-200 ease">about</a>
                <a href="" className="uppercase text-sm font-medium phone:py-4 px-4 py-10 sm:hover:text-primary transition duration-200 ease">services</a>
                <a href="" className="uppercase text-sm font-medium phone:py-4 px-4 py-10 sm:hover:text-primary transition duration-200 ease">projects</a>
                <a href="" className="uppercase text-sm font-medium phone:py-4 px-4 py-10 sm:hover:text-primary transition duration-200 ease">blog</a>
                <a href="" className="uppercase text-sm font-medium phone:py-4 px-4 py-10 sm:hover:text-primary transition duration-200 ease">contact</a>
            </div>

        </div>
    )
})

export default HeaderNavbar
