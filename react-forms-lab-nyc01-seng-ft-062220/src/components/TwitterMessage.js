import React from "react";

class TwitterMessage extends React.Component {
  constructor() {
    super();

    this.state = {
      message: ""
    };
  }

  handleMessageChange = (event) => {
    this.setState({
      message: event.target.value,
    }, () => console.log( this.state.message))
    
  }
  
  render() {
    return (
      <div>
      <h1>You have {this.props.maxChars - this.state.message.length} characters left</h1>
        <strong>Your message:</strong>
        <input type="text" name="message" id="message" onChange={event => this.handleMessageChange(event)} value={this.state.message} />
      </div>
    );
  }
}

export default TwitterMessage;
