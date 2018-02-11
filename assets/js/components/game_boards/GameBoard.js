import React from "react";
import styled from "styled-components";

const StyledGameBoard = styled.div`
  align-self: flex-center;
  width: 100%;
  border-style: solid;
  border-width: 5px;
  margin: 30px 30px 30px 30px;
  box-sizing: border-box;
`

export class GameBoard extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <StyledGameBoard>
        {this.props.children}
      </StyledGameBoard>
    )
  }
}
