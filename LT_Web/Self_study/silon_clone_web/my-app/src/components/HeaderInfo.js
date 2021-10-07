import React from 'react'

function HeaderInfo() {
    return (
        <div className="header-info bg-header_info_color hidden sm:block">
            <div className="gid flex justify-between items-center container mx-auto text-xs uppercase leading-7 py-3 font-light">
                <div className="">
                    <span className="pr-4 "> phone: +84 36 275 1710</span>
                    <span className="">
                        email: nhutan2001@gmail.com
                    </span>
                </div>

                <div>
                    <ul className="flex columns justify-center items-center">
                        <li>
                            gift card
                        </li>
                        <li className="px-4">
                            track order
                        </li>
                        <li>
                            language
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    )
}

export default HeaderInfo
