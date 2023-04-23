import logo from './logo.svg';
import Button from './button'
import Buttons from './buttons'
import React from 'react';
import './App.css';

function App() {
/*
  const cnts  = document.querySelectorAll('h3');
  for (const cnt of cnts){
    cnt.addEventListener('change', () => {
        let val = 0;
        for (cnt of cnts) {
            val += parseInt(cnt.textContent.slice[cnt.textContent - 1, cnt.textContent])
        }
        setNum(4 - val);
    })
  }
*/
/*
  useEffect(() => {
      const handleChange = (event) => {
        const points = Array.from(document.querySelectorAll('h3'))
            .reduce((sum, cnt) => sum + parseInt(cnt.textContent.slice(-1)), 0);
        setNum(4 - points);
      };
      document.querySelectorAll('h3').forEach((cnt) => {
        cnt.addEventListener('change', handleChange) ;
      });
      return () => {
        document.querySelectorAll('h3').forEach((cnt) => {
            cnt.removeEventListener('change', handleChange) 
        })
      };
  }, []);
*/
  return (
          <>
	  <p>Hello World!</p>
          <Buttons />
          <Button />
          <Button />
          <Button />
          <Button />
          </>
  );
}

export default App;
