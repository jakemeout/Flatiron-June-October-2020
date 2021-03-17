import React from 'react';
import { NavLink } from 'react-router-dom';

export default  class NavBar extends React.Component {
  render() {
    return (
      <div className="navbar">
       <NavLink to="/">Home</NavLink>
        <NavLink to="/movies">Movies</NavLink>
        <NavLink to="/directors">Directors</NavLink>
        <NavLink to="/actors">Actors</NavLink>
      </div>
    );
  }
};


