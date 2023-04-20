import React from 'react';

class Set extends React.Component {
	constructor(props){
		super(props);
		this.state = {
			cnt: 0,
		}
	}

	handleClick = (newcnt) =>  {
		this.setState({cnt: newcnt});
	}

	render() {
		return (
			<div>
			<p>Another cnt {this.state.cnt} created by setState</p>
			<button value="Click" onClick={this.handleClick.bind(this, this.state.cnt - 1)} disabled={this.state.cnt === 0}/>
			<button value="Click" onClick={this.handleClick.bind(this, this.state.cnt + 1)} disabled={this.state.cnt === 2}/>
			</div>
		)
	}
}

export default Set;
