import React from 'react'
import Member from './Member'

function FollowUs() {
    const members = [
        {
            id: '1',
            image: 'https://demo.themeies.com/silon/images/instagram/1.jpg',

        },
        {
            id: '2',
            image: 'https://demo.themeies.com/silon/images/instagram/2.jpg',

        },
        {
            id: '3',
            image: 'https://demo.themeies.com/silon/images/instagram/3.jpg',

        },
        {
            id: '4',
            image: 'https://demo.themeies.com/silon/images/instagram/4.jpg',

        },
    ]
    return (
        <div className="bg-white py-12">
            <div className="container mx-auto">

                <h1 className="uppercase text-4xl font-bold text-center block leading-tight mb-20 mt-1">FOLLOW US</h1>

                <div className="mx-auto grid sm:grid-cols-4 sm:gap-7 gap-y-7">
                    {
                        members.map(member => (
                            <Member member={member} key={member.id} />
                        ))
                    }
                </div>
            </div>
        </div>
    )
}

export default FollowUs
