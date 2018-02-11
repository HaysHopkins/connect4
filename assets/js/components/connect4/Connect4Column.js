import React from "react";

import { Connect4Cell } from "./Connect4Cell";

export class Connect4Column extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <Connect4Cell />
    )
  }
}
