import React from "react";
import styled from "styled-components";

const StyledHeader = styled.div`
  text-align: center;
  width: 100%;
  height: 50px;
  font: verdana;
  font-size: 40px;
  color: #3671d1;
  font-weight: 900;
`

export default class Header extends React.Component {
  render() {
    return (
      <StyledHeader>
        Connect4
      </StyledHeader>
    )
  }
}
