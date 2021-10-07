import React, { useState, useEffect } from 'react'
import axios from 'axios'

function DataFetching() {
    const [post, setPost] = useState({})
    const [id, setId] = useState(1)
    const [idBtnSave, setIdBtnSave] = useState(1)

    useEffect(() => {
        axios.get(`https://jsonplaceholder.typicode.com/posts/${idBtnSave}`)
            .then(res => {
                setPost(res.data)
                console.log(res)
            })
            .catch(err => console.log(err))
    }, [idBtnSave])

    return (
        <div>
            <input type="text" value={id} onChange={(e) => setId(e.target.value)} />
            <button onClick={() => setIdBtnSave(id)}>Save</button>
            <div>{post.title}</div>
            {/* <ul>
                {
                    posts.map(post => (<li key={post.id}>{post.title}</li>))
                }
            </ul> */}
        </div>
    )
}

export default DataFetching
