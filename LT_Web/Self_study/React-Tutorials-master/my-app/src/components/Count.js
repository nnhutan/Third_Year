import React from 'react'

function Count({ text, count }) {
    console.log(`Rendering ${text}`)
    return (
        <div>
            <div>{text} - {count}</div>
        </div>
    )
}

export default React.memo(Count)
