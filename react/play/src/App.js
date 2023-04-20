import logo from './logo.svg';
import './App.css';
import React from 'react';
import Hello from './hello';
import Location from './location';
import Use from './use';
import Set from './set';
function App() {
  return (
	<div>
	 <Hello />
	 <Hello />
	 <Location />
	 <hr />
	 <h2>useState which is used in a function component </h2>
	 <Use />
	 <hr />
	 <h2>setState which is used in a class component </h2>
	 <Set />
	</div>
  );
}

export default App;
