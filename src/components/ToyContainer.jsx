import React from 'react';
import ToyCard from './ToyCard'


export default class ToyContainer extends React.Component {
  
  renderToys = () => {
    return this.props.toys.map(toyObj => <ToyCard key={toyObj.id} like={this.props.like} id={toyObj.id} toy={toyObj} donateToGoodwill={this.props.donateToGoodwill} />)
  }
  
  render() {
    return(
    <div id="toy-collection">
      {this.renderToys()}
    </div>
  );
  
  }
}


