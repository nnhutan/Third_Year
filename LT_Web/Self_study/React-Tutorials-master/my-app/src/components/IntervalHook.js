import React, { useState, useEffect } from 'react'

function IntervalHook() {
    const [count, setCount] = useState(0)

    const tick = () => {
        setCount(prev => prev + 1)
    }

    useEffect(() => {

        const interval = setInterval(tick, 1000)

        // return () => {
        //     clearInterval(interval)
        // }
    }, [])

    return (
        <div>
            {count}
        </div>
    )
}

export default IntervalHook
