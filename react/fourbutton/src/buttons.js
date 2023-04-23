import React from 'react';

class Buttons extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            total: 4,
            used:0,
            one: 0,
            two: 0,
            three: 0,
            four: 0,
        }
        this.handleClick = this.handleClick.bind(this);
        this.handleClick2 = this.handleClick2.bind(this);
        this.handleClick3 = this.handleClick3.bind(this);
        this.handleClick4 = this.handleClick4.bind(this);
    }


    handleClick = (newcnt) => {
        this.setState({total: this.state.total - (newcnt - this.state.one)});
        this.setState({one: newcnt});
    }

    handleClick2 = (newcnt) => {
        this.setState({total: this.state.total - (newcnt - this.state.two)});
        this.setState({two: newcnt});
    }

    handleClick3 = (newcnt) => {
        this.setState({total: this.state.total - (newcnt - this.state.three)});
        this.setState({three: newcnt});
    }

    handleClick4 = (newcnt) => {
        this.setState({total: this.state.total - (newcnt - this.state.four)});
        this.setState({four: newcnt});
    }
    render() {
        return (
        <div>
        <h1>Total left: {this.state.total}</h1>
        <h3>value: {this.state.one}</h3>
        <button value="Click" onClick={() => this.handleClick(this.state.one - 1)} disabled={this.state.one === 0}>-</button>
        <button value="Click" onClick={() => this.handleClick(this.state.one + 1)} disabled={this.state.one === 2 || this.state.total === 0}>+</button>
        <hr />
        <h3>value: {this.state.two}</h3>
        <button value="Click" onClick={() => this.handleClick2(this.state.two- 1)} disabled={this.state.two === 0}>-</button>
        <button value="Click" onClick={() => this.handleClick2(this.state.two+ 1)} disabled={this.state.two === 2 || this.state.total === 0}>+</button>
        <hr />
        <h3>value: {this.state.three}</h3>
        <button value="Click" onClick={() => this.handleClick3(this.state.three - 1)} disabled={this.state.three === 0}>-</button>
        <button value="Click" onClick={() => this.handleClick3(this.state.three + 1)} disabled={this.state.three === 2 || this.state.total === 0}>+</button>
        <hr />
        <h3>value: {this.state.four}</h3>
        <button value="Click" onClick={() => this.handleClick4(this.state.four - 1)} disabled={this.state.four === 0}>-</button>
        <button value="Click" onClick={() => this.handleClick4(this.state.four + 1)} disabled={this.state.four === 2 || this.state.total === 0}>+</button>
        <hr />
        </div>
        )
    }
}

export default Buttons;
