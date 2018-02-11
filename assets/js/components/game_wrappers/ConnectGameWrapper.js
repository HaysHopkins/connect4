import React from "react";

import { GameBoard } from "../game_boards/GameBoard";
import { ConnectColumn } from "../connect4/Connect4Column";

export class ConnectGameWrapper extends React.Component {
  constructor(props) {

  }

  render() {
    let children = <Connect4Column />

    <StyledConnectWrapper>
      <GameBoard>
        {children}
      </GameBoard>
    </StyledConnectWrapper>
  }
}
