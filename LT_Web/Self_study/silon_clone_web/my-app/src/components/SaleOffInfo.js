import React from 'react'

function SaleOffInfo() {
    return (
        <div>
            <div className="w-full bg-primary_bg_color bg-center bg-top bg-cover bg-no-repeat">
                <div className="grid sm:grid-cols-2 sm:gap-x-0">
                    <div className="px-4 flex items-center phone:justify-center justify-end sm:pr-20 md:pr-10">
                        <div className="max-w-md text-center">
                            <h1 className="uppercase font-bold leading-none text-6xl mb-2 sm:mb-8 md:mb-7 block font-saleOff sm:mt-0 mt-8">50% OFF</h1>
                            <h4 className="text-2xl font-light leading-none mb-4 sm:mb-14 md:mb-6">ALL WOMEN’S COLLECTION</h4>
                            <button className="sm:mb-0 mb-8 transition duration-300 ease-in-out uppercase text-white text-sm font-medium bg-primary px-12 py-5 rounded-sm leading-3 hover:text-blue-700 hover:bg-white">shop now</button>
                        </div>
                    </div>
                    <div className="px-4">
                        <img src="https://demo.themeies.com/silon/images/ban-2.png" alt="banner" className="w-full" />
                    </div>
                </div>
            </div>
        </div>
    )
}

export default SaleOffInfo
