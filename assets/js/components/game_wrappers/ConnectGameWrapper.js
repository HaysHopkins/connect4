import React from "react";
import _ from "lodash";
import styled from "styled-components";

import GameBoard from "../game_boards/GameBoard";
import Connect4Column from "../connect4/Connect4Column";

const height = 6;
const width = 7;

const StyledGameWrapper = styled.div``

export default class ConnectGameWrapper extends React.Component {
  render() {
    let columns = _.times(width, (index) => {
      return <Connect4Column key={index}
                             height={height} />;
    });

    return (
      <StyledGameWrapper>
        <GameBoard>
          {columns}
        </GameBoard>
      </StyledGameWrapper>
    )
  }
}
