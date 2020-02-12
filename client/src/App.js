import React from 'react';
import axios from 'axios';
import './App.css';

function App() {
axios.get("http://localhost:3001/neighbourhoods")
.then(
  response => {
    console.log(response);
  }
)
  return (
    <div className="App">
      
    </div>
  );
}

export default App;
