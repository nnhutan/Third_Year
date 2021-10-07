import React, { useRef } from 'react'

function Member({ member }) {

    const childMenu = useRef()

    const handleMouseEnter = () => {
        childMenu.current.style.visibility = 'visible';
        childMenu.current.style.opacity = '1'
        childMenu.current.style.top = '0'

    }

    const handleMouseLeave = () => {
        childMenu.current.style = null;
    }
    return (
        <div className="relative" onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
            <img src={member.image} alt="member" className="w-full" />
            <div ref={childMenu} className="absolute top-7 bottom-0 left-0 right-0 bg-red-500 bg-opacity-60 flex cursor-pointer invisible transition-all opacity-0 duration-300 ease-in-out">
                <i className="fab fa-instagram m-auto text-white text-3xl"></i>
            </div>
        </div>
    )
}

export default Member
