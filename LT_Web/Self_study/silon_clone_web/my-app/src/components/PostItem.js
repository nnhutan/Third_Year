import React from 'react'

function PostItem({ post }) {
    return (
        <div>
            <img src={post.image} alt="post" className="w-full mb-6" />
            <div className="">
                <span className="inline-block bg-primary w-3 h-1.5 rounded-sm align-middle relative -mt-px"></span>
                <p className="text-xs leading-4 text-gray-500 inline-block ml-2 hover:text-primary transition duration-200 ease cursor-pointer">
                    {post.time}
                </p>
            </div>
            <h3 className="text-xl font-bold leading-7 pb-5 border-solid border-b border-gray-300 mb-5 mt-px hover:text-primary transition duration-200 ease cursor-pointer">{post.title}</h3>
            <div className="flex gap-6 items-center text-gray-500">
                <div className="flex items-center hover:text-primary transition duration-200 ease">
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-3.5 w-3.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10" />
                    </svg>
                    <a href="#" className="text-sm ml-2 leading-4">{post.type}</a>
                </div>
                <div className="flex items-center hover:text-primary transition duration-200 ease">
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-3.5 w-3.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z" />
                    </svg>
                    <a href="#" className="text-sm ml-2 leading-4">{post.noCmt} Comments</a>
                </div>
            </div>
        </div>
    )
}

export default PostItem
