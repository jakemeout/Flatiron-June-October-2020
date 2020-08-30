import React from 'react';
import './App.css';

import Header from './components/Header'
import ToyForm from './components/ToyForm'
import ToyContainer from './components/ToyContainer'

import data from './data'


class App extends React.Component{

  state = {
    data: data,
    display: false
  }

  handleClick = () => {
    let newBoolean = !this.state.display
    this.setState({
      display: newBoolean
    })
  
  }

  likeToy = (toyObj) =>{
    this.state.data.find(toy => toy.id === toyObj.id).likes ++
    this.setState({
      data: data
    })
  }

  donateToGoodwill = (key) => {
  
    this.setState({
     data: this.state.data.filter(data => data.id !== key )
    },() => console.log(this.state.data))
  }

  handleSubmit = (event) => {
    event.preventDefault()
    let newToyObj = {
      id : this.state.toys.length + 1,
      name: event.target.name.value,
      image: event.target.image.value
    }

    this.setState({
      data: [...data, newToyObj]
    })

  }

  render(){
    return (
      <>
        <Header/>
        { this.state.display
            ?
          <ToyForm handleSubmit={this.handleSubmit}/>
            :
          null
        }
        <div className="buttonContainer">
          <button onClick={this.handleClick}> Add a Toy </button>
        </div>
        <ToyContainer toys={this.state.data} donateToGoodwill={this.donateToGoodwill} like={this.likeToy}/>
      </>
    );
  }

}

export default App;
