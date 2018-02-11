import React from "react";
import styled from "styled-components";

const StyledGameBoard = styled.div`
  display: flex;
  align-self: flex-center;
  justify-content: center;
  margin: 30px 30px 30px 30px;
  background-color: #3671d1;
`

export default class GameBoard extends React.Component {
  render() {
    return(
      <StyledGameBoard>
        {this.props.children}
      </StyledGameBoard>
    )
  }
}
