import React from 'react'
import Product from './Product'
function MostPopular() {
    const products = [
        {
            id: 1,
            image: `https://demo.themeies.com/silon/images/products/4.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 2,
            image: `https://demo.themeies.com/silon/images/products/5.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 3,
            image: `https://demo.themeies.com/silon/images/products/6.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 4,
            image: `https://demo.themeies.com/silon/images/products/7.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        }
    ]

    return (
        <div className="bg-white py-12">
            <div className="container mx-auto">

                <h1 className="uppercase text-4xl font-bold text-center block leading-tight mb-20 mt-1">MOST POPULAR</h1>

                <div className="grid sm:grid-cols-4 sm:gap-x-7">
                    {
                        products.map(product => (
                            <Product product={product} key={product.id} />
                        ))
                    }
                </div>
            </div>
        </div>
    )
}

export default MostPopular
