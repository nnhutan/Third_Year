import React, { useReducer } from 'react'

function CounterThree() {
    const initialState = 0;
    const reducer = (state, action) => {
        switch (action) {
            case 'increment':
                return state + 1
            case 'decrement':
                return state - 1
            case 'reset':
                return initialState
            default:
                return state
        }
    }
    const [state, dispatch] = useReducer(reducer, initialState)
    const [count, dispatchCount] = useReducer(reducer, initialState)
    return (
        <div>
            <h1>Count - {state}</h1>
            <button onClick={() => dispatch('increment')}>Increment</button>
            <button onClick={() => dispatch('decrement')}>Decrement</button>
            <button onClick={() => dispatch('reset')}>Reset</button>

            <div>
                <h1>Count2 - {count}</h1>
                <button onClick={() => dispatchCount('increment')}>Increment</button>
                <button onClick={() => dispatchCount('decrement')}>Decrement</button>
                <button onClick={() => dispatchCount('reset')}>Reset</button>
            </div>
        </div>
    )
}

export default CounterThree
