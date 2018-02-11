//  Cell html and styling adapted from:
// https://github.com/sergiocruz/react-connect4/tree/master/app/components

import React  from 'react';
import styled from 'styled-components';

const EmptyCell = styled.div`
  background: #eeeeee;
  border-radius: 50%;
  border: none;
  color: #333;
  display: inline-block;
  font-size: 12px;
  height: 80px;
  width: 80px;
  margin: 10px auto;
  outline: none;
  padding: 0;
  text-align: center;
  text-decoration: none;
  vertical-align: middle;
`

const RedCell = EmptyCell.extend`
  background-color: #801515 !important;
`

const YellowCell = EmptyCell.extend`
  background-color: #f7f307 !important;
`

export default class Connect4Cell extends React.Component {

  render() {
    return (
      <EmptyCell />
    )
  }
}
