import React from 'react';

class Button extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            cnt: 0,
        }
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick = (newcnt) => {
        this.setState({cnt: newcnt});
    }

    render() {
        return (
        <div>
        <h3>value: {this.state.cnt}</h3>
        <button value="Click" onClick={() => this.handleClick(this.state.cnt - 1)}>-</button>
        <button value="Click" onClick={() => this.handleClick(this.state.cnt + 1)}>+</button>
        </div>
        )
    }
}

export default Button;
