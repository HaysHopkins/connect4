import React from "react";
import _ from "lodash";
import styled from "styled-components";

import Connect4Cell from "./Connect4Cell";

const StyledConnect4Column = styled.div`
  display: flex;
  flex-direction: column;
  margin-right: 15px;
  margin-left: 15px;
  background-color: #3671d1;
`

export default class Connect4Column extends React.Component {
  render() {
    let cells = _.times(this.props.height, (index) => {
      return <Connect4Cell key={index} />;
    });

    return (
      <StyledConnect4Column>
        {cells}
      </StyledConnect4Column>
    )
  }
}
