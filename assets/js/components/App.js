import React from "react";

class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      message: "",
    };
  }

  componentDidMount() {
    fetch('/api/hello').then((response) => {
      return response.json();
    }).then((body) => {
      this.setState({message: body.data});
    });
  }

  render() {
    return(
      <div>{this.state.message}</div>
    );
  }
}

export default App;
