import React from "react";

class LoginForm extends React.Component {
  constructor() {
    super();

    this.state = {
      username: "",
      password: ""
    };
  }

 handleSubmit = (event) => {
  event.preventDefault()
  if(this.state.username.length === 0 || this.state.password.length === 0){
    return alert("you didn't enter a some information")
  }else {
    this.props.handleLogin(this.state)
  }
  
 }

  wereDoingItLive = (event) => {
    this.setState({
      [event.target.name]: event.target.value
    }, ()=> console.log(this.state.username, this.state.password))
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <div>
          <label>
            Username
            <input id="username" name="username" type="text" onChange={event => this.wereDoingItLive(event)} value={this.state.username}/>
          </label>
        </div>
        <div>
          <label>
            Password
            <input id="password" name="password" type="password" onChange={event => this.wereDoingItLive(event)} value={this.state.password}/>
          </label>
        </div>
        <div>
          <button type="submit">Log in</button>
        </div>
      </form>
    );
  }
}

export default LoginForm;
