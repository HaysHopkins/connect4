import React from "react";

import { ConnectGameWrapper } from "./game_wrappers/ConnectGameWrapper";

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
      <ConnectGameWrapper />
    );
  }
}

export default App;
