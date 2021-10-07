import React from 'react'
import FeatureItem from './FeatureItem'

function Feature() {
    const features = [
        {
            id: 1,
            iconUrl: 'https://demo.themeies.com/silon/images/feature-icons/1.png',
            title: 'MONEY BACK GURANTEE',
            desc: 'Great fill signs he evening'
        },
        {
            id: 2,
            iconUrl: 'https://demo.themeies.com/silon/images/feature-icons/2.png',
            title: 'FREE DELIVERY',
            desc: 'Great fill signs he evening'
        },
        {
            id: 3,
            iconUrl: 'https://demo.themeies.com/silon/images/feature-icons/3.png',
            title: 'ALWAY SUPPORT',
            desc: 'Great fill signs he evening'
        },
        {
            id: 4,
            iconUrl: 'https://demo.themeies.com/silon/images/feature-icons/4.png',
            title: 'SECURE PAYMENT',
            desc: 'Great fill signs he evening'
        },
    ]
    return (
        <div className="py-12">
            <div className="container grid sm:grid-cols-4 sm:gap-x-7 mx-auto sm:gap-y-0 gap-y-7">
                {
                    features.map(feature => (
                        <FeatureItem feature={feature} key={feature.id} />
                    ))
                }
            </div>
        </div>
    )
}

export default Feature
