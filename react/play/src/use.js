import 'milligram/dist/milligram.min.css';
import { useState } from 'react';

function Use () {
	const [cnt, setcnt] = useState(0);

	function handleClick(newcnt){
		setcnt(newcnt);
	}

	return (
	<div>
	<p>A cnt {cnt} created by useState </p>
	<button value="click to increment cnt" onClick=
		{() => {handleClick(cnt - 1)}} disabled={cnt === 0} />
	<button value="click to increment cnt" onClick=
		{() => {handleClick(cnt + 1)}} disabled={cnt === 2} />
	</div>
	);
}

export default Use;
