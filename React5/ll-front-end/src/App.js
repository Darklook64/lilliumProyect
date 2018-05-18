import React, { Component } from 'react';
import logo from './logo.svg';
import lillium from './LilliumProyectLogo.png';
import './App.css';
import navegationDrawer from './navegationDrawer.js'

class App extends Component {
  render() {
    return (
     
      <div className="App">
        <header className="App-header">
          <img src={lillium} className="App-logo" alt="logo" />
          
        </header>


        <p className="App-intro">
          <label>Lillium Es una applicacion orientada al cuidado intensivo de la fauna,
            permitiendo al usuario realizar distintas actividades sobre el ejemplar vegetal
            como regado,modificar el nivel de agua,monitorear temperatura,humedad y descripcion.
          </label>
        </p>
      </div>
    );
  }
}

export default App;
