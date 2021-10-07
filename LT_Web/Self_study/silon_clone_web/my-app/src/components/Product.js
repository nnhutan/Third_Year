import React, { useRef } from 'react';

function Product({ product }) {

    const rating = () => {
        const rate = []
        for (let i = 0; i < product.star; i++) {
            rate.push(i + 1)
        }
        return rate
    }

    const childMenu = useRef()

    const handleMouseEnter = () => {
        childMenu.current.style.display = 'flex';
        childMenu.current.style.opacity = '1';
        for (let i = 0; i < childMenu.current.children.length; i++) {
            childMenu.current.children[i].style.opacity = '1';
            childMenu.current.children[i].style.visibility = 'visible';
        }
    }

    const handleMouseLeave = () => {
        childMenu.current.style = null;
        for (let i = 0; i < childMenu.current.children.length; i++) {
            childMenu.current.children[i].style.opacity = null;
            childMenu.current.children[i].style.visibility = null;
        }
    }


    return (
        <div className="text-center  cursor-pointer flex flex-col items-center relative" onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
            <img src={product.image} alt="product" className="mb-7 w-full" />
            <h5 className="text-sm text-gray-500 font-normal">{product.title}</h5>
            <div className="flex justify-center text-primary">
                {rating().map((i) => (
                    <span key={i} className="block h-7 flex items-center w-4 justify-center">
                        <svg xmlns="http://www.w3.org/2000/svg" className="h-3 w-3 " fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z" />
                        </svg>
                    </span>
                ))}
            </div>
            <p className="text-lg font-medium leading-7">${product.price}</p>

            <div ref={childMenu} className="hidden flex justify-center absolute z-10 left-0 bottom-48 right-0 opacity-0 transition duration-200 ease-in-out">
                <a href="#" className="invisible opacity-0 h-12 w-12 bg-white flex rounded-full shadow mx-1 hover:bg-primary hover:text-white transition duration-200 ease-in-out animate-fadeInUp_200">
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-3.5 w-3.5 m-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                    </svg>
                </a>
                <a href="#" className="invisible opacity-0 h-12 w-12 bg-white flex rounded-full shadow mx-1 hover:bg-primary hover:text-white transition duration-200 ease-in-out animate-fadeInUp_400">
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-3.5 w-3.5 m-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                    </svg>
                </a>
                <a href="#" className="invisible opacity-0 h-12 w-12 bg-white flex rounded-full shadow mx-1 hover:bg-primary hover:text-white transition duration-200 ease-in-out animate-fadeInUp_600">
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-3.5 w-3.5 m-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
                    </svg>
                </a>
            </div>
        </div>
    )
}

export default Product
