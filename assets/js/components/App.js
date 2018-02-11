import React from "react";
import styled from "styled-components";

import Header from "./utilities/header/Header";
import ConnectGameWrapper from "./game_wrappers/ConnectGameWrapper";

const AppWrapper = styled.div`
  height: 100%;
  width: 100%;
`

export default class App extends React.Component {

  componentDidMount() {
    fetch('/api/hello').then((response) => {
      return response.json();
    }).then((body) => {
      this.setState({message: body.data});
    });
  }

  render() {
    return(
      <AppWrapper>
        <Header />
        <ConnectGameWrapper />
      </AppWrapper>
    );
  }
}
