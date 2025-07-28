import React, { Component } from 'react';
import CurrencyConvertor from './CurrencyConvertor';

class App extends Component {
  constructor() {
    super();
    this.state = {
      counter: 0
    };
  }

  increment = () => {
    this.setState({ counter: this.state.counter + 1 });
    this.sayHello();
  };

  decrement = () => {
    this.setState({ counter: this.state.counter - 1 });
  };

  sayHello = () => {
    console.log("Hello! Counter has been updated.");
  };

  sayWelcome = (msg) => {
    alert(msg);
  };

  handleSyntheticEvent = (e) => {
    alert("I was clicked");
  };

  render() {
    return (
      <div style={{ padding: "20px" }}>
        <h1>React Event Handling Demo</h1>
        <h2>Counter: {this.state.counter}</h2>
        <button onClick={this.increment}>Increment</button>
        <button onClick={this.decrement}>Decrement</button>
        <br /><br />
        <button onClick={() => this.sayWelcome("Welcome!")}>Say Welcome</button>
        <br /><br />
        <button onClick={this.handleSyntheticEvent}>Click Me (Synthetic Event)</button>
        <br /><br />
        <CurrencyConvertor />
      </div>
    );
  }
}

export default App;
