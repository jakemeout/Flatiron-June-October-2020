import React from 'react';

export default class CoordinatesButton extends React.Component{
    render(){
      return <button onClick={this.clickHandler}
        >Record Coodinates</button>
    }
    clickHandler = (event) => {
        this.props.onReceiveCoordinates([event.clientX, event.clientY])
    }
}