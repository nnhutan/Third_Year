import React from 'react'
import Product from './Product'

function TrendingProduct() {
    const products = [
        {
            id: 1,
            image: `https://demo.themeies.com/silon/images/products/8.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 2,
            image: `https://demo.themeies.com/silon/images/products/9.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 3,
            image: `https://demo.themeies.com/silon/images/products/10.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 4,
            image: `https://demo.themeies.com/silon/images/products/11.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 5,
            image: `https://demo.themeies.com/silon/images/products/12.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 6,
            image: `https://demo.themeies.com/silon/images/products/13.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 7,
            image: `https://demo.themeies.com/silon/images/products/14.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        },
        {
            id: 8,
            image: `https://demo.themeies.com/silon/images/products/15.jpg`,
            title: 'Red Women Purses',
            star: 5,
            price: 35
        }
    ]

    return (
        <div className="bg-white py-12">
            <div className="container mx-auto">

                <h1 className="uppercase text-4xl font-bold text-center block leading-tight mb-20 mt-1">TRENDING PRODUCTS</h1>

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

export default TrendingProduct
