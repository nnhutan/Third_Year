export default function logger(reducer) {
    return (prevState, action, args) => {
        console.group(action)
        console.log('Previous state:', prevState)
        console.log('Action arguments:', args)
        const nextState = reducer(prevState, action, args)
        console.log('Next state:', nextState)

        console.groupEnd()
        return nextState
    }
}