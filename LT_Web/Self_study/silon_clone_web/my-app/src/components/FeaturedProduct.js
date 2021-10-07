import React from 'react'
import Product from './Product'

function FeaturedProduct() {

    const products = [
        {
            id: 1,
            image: `https://demo.themeies.com/silon/images/products/1.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 2,
            image: `https://demo.themeies.com/silon/images/products/2.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 3,
            image: `https://demo.themeies.com/silon/images/products/3.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        }
    ]


    return (
        <div className="bg-white py-12">
            <div className="container mx-auto">

                <h1 className="uppercase text-4xl font-bold text-center block leading-tight mb-20 mt-1">featured product</h1>

                <div className="grid sm:grid-cols-3 sm:gap-x-7">
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

export default FeaturedProduct
