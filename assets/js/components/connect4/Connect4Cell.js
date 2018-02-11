//  Cell html and styling adapted from:
// https://github.com/sergiocruz/react-connect4/tree/master/app/components

import React  from 'react';
import styled from 'styled-components';

// TODO: Add these styles
// .connect4-board--active &:hover {
//   background-color: #dddddd;
// }

// .connect4-board--inactive & {
//   cursor: default;
// }

const EmptyCell = styled.div`
  background: #eeeeee;
  border-radius: 50%;
  border: none;
  color: #333;
  cursor: pointer;
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

const RedCell = styled.div`
  background-color: #801515 !important;
`

const YellowCell = styled.div`
  background-color: #f7f307 !important;
`

export default class Connect4Cell extends React.Component {

  handleAddPiece() {
    // this.props.addPiece(this.props.y, this.props.nextPlayer);
  }

  render() {
    // return (
    //   <button
    //     className={cellClasses}
    //     onClick={this.handleAddPiece.bind(this)}>
    //   </button>
    // );

    return (
      <EmptyCell />
    )
  }

}

// TODO: Add propTypes back
// Cell.propTypes = {
//   x: React.PropTypes.number.isRequired,
//   y: React.PropTypes.number.isRequired,

//   // what value this cell has
//   cell: React.PropTypes.string.isRequired,

//   // function to add this piece to board
//   addPiece: React.PropTypes.func.isRequired

// };
