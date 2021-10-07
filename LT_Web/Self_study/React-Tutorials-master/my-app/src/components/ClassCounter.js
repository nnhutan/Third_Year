import React, { Component } from 'react'

class ClassCounter extends Component {
    constructor(props) {
        super(props)

        this.state = {
            count: 0
        }
    }
    incrementCount = () => {
        this.setState(prevState => ({ count: prevState.count + 1 }))
    }

    render() {
        const { count, incrementCount } = this.state
        return (
            <div>
                <button onClick={this.incrementCount}>click {count} times</button>
            </div>
        )
    }
}

export default ClassCounter
