import React from 'react'

export default class Cell extends React.Component {

    constructor(props) {
        super()
        this.state = {
            color: props.value
        } // ...define initial state with a key of 'color' set to the 'value' prop
    }

    render() {
       return ( <div className="cell"
        style={{backgroundColor: this.state.color}}
        onClick={this.clickListener}>
        </div>
       )
    }

    clickListener = () => {
        this.setState({
            color: '#333'
          })
    }

}