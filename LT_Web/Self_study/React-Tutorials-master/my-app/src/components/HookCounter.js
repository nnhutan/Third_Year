import React, { useState } from 'react'

function HookCounter() {

    const [count, setstate] = useState(0)

    function incrementCount() {
        setstate(count + 1)
    }

    return (
        <div>
            <button onClick={incrementCount}>click {count} times</button>
        </div>
    )
}

export default HookCounter
