import React from 'react'

function Banner() {
    return (
        <div className="w-full bg-banner bg-center bg-top bg-cover bg-no-repeat">
            <div className="sm:grid sm:grid-cols-2 gap-x-0 flex flex-wrap-reverse">
                <div className="px-4 md:px-0 flex items-center justify-end">
                    <div className="max-w-lg text-center">
                        <span className="sm:mt-0 mt-5 uppercase text-gray-600 font-medium tracking-widest text-sm mb-3.5 block">ultimate collection</span>
                        <h1 className="text-4xl sm:text-5xl font-medium leading-none mb-5 sm:mb-11">Complete Women Fashion Here</h1>
                        <button className="sm:mb-0 mb-5 transition duration-300 ease-in-out uppercase text-white text-sm font-medium bg-primary px-12 py-5 rounded-sm leading-3 hover:text-blue-700 hover:bg-white">shop now</button>
                    </div>
                </div>
                <div className="px-4 md:px-0 ">
                    <img src="https://demo.themeies.com/silon/images/ban-1.png" alt="banner" className="w-full" />
                </div>
            </div>
        </div>
    )
}

export default Banner
