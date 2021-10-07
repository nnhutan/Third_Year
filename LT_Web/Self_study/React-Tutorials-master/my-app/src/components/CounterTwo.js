import React, { useReducer } from 'react'

function CounterTwo() {
    const initialState = {
        count: 0
    };
    const reducer = (state, action) => {
        switch (action.type) {
            case 'increment':
                return {
                    ...state,
                    count: state.count + 1
                }
            case 'decrement':
                return {
                    ...state,
                    count: state.count - 1
                }
            case 'reset':
                return initialState
            default:
                return state
        }
    }
    const [state, dispatch] = useReducer(reducer, initialState)
    return (
        <div>
            <h1>Count - {state.count}</h1>
            <button onClick={() => dispatch({ type: 'increment' })}>Increment</button>
            <button onClick={() => dispatch({ type: 'decrement' })}>Decrement</button>
            <button onClick={() => dispatch({ type: 'reset' })}>Reset</button>
        </div>
    )
}

export default CounterTwo
