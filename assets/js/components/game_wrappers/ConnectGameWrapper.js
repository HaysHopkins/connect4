import React from "react";
import styled from "styled-components";

import { GameBoard } from "../game_boards/GameBoard";
import { Connect4Column } from "../connect4/Connect4Column";

const StyledConnectWrapper = styled.div`
  display: flex;
  height: 600px;
  width: 100%;
  border-style: solid;
  border-width: 10px;
`

export class ConnectGameWrapper extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    let children = <Connect4Column />;

    return (
      <StyledConnectWrapper>
        <GameBoard>
          {children}
        </GameBoard>
      </StyledConnectWrapper>
    )
  }
}
