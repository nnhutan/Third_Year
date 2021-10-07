import React from 'react'
import PostItem from './PostItem'

function SilonJournal() {
    const posts = [
        {
            id: '1',
            image: 'https://demo.themeies.com/silon/images/post/1.jpg',
            time: '17 October, 2021',
            title: 'Were divided land his creature which have evening subdue',
            type: 'Women Fashion',
            noCmt: 2
        },
        {
            id: '2',
            image: 'https://demo.themeies.com/silon/images/post/2.jpg',
            time: '17 October, 2021',
            title: 'Were divided land his creature which have evening subdue',
            type: 'Women Fashion',
            noCmt: 2
        },
        {
            id: '3',
            image: 'https://demo.themeies.com/silon/images/post/3.jpg',
            time: '17 October, 2021',
            title: 'Were divided land his creature which have evening subdue',
            type: 'Women Fashion',
            noCmt: 2
        },
    ]
    return (
        <div className="bg-white py-12">
            <div className="container mx-auto">

                <h1 className="uppercase text-4xl font-bold text-center block leading-tight mb-20 mt-1">silon journal</h1>

                <div className="mx-auto grid sm:grid-cols-3 gap-7">
                    {
                        posts.map(post => (
                            <PostItem post={post} key={post.id} />
                        ))
                    }
                </div>
            </div>
        </div>
    )
}

export default SilonJournal
