import React from 'react'

function FeatureItem({ feature }) {
    return (
        <div className="p-6 border border-solid border-gray-200 flex flex-col items-center">
            <img src={feature.iconUrl} alt="icon" className="mb-7" />
            <h5 className="mb-2.5 uppercase font-medium text-base">{feature.title}</h5>
            <p className="leading-4 text-sm text-gray-500">{feature.desc}</p>
        </div>
    )
}

export default FeatureItem
