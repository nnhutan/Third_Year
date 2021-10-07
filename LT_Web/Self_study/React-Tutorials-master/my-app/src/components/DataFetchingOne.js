import React, { useState, useEffect } from 'react'
import axios from 'axios'
function DataFetchingOne() {

    const [loading, setLoading] = useState(true)
    const [err, setErr] = useState('')
    const [post, setPost] = useState({})

    useEffect(() => {
        axios.get(`https://jsonplaceholder.typicode.com/posts/1`)
            .then(res => {
                setLoading(false)
                setPost(res.data)
                setErr('')
            })
            .catch(err => {
                setLoading(false)
                setPost({})
                setErr('Something went wrong!')
            })
        return () => {

        }
    }, [])

    return (
        <div>
            {loading ? 'Loading' : post.title}
            {err ? err : null}
        </div>
    )
}

export default DataFetchingOne
