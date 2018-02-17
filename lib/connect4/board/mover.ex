defmodule Connect4.Mover do
  import MapSet, only: [delete: 2, put: 2, size: 1]

  def move(board, player, position) do
    %{board |
        :free  => MapSet.delete(board.free, position),
        player => MapSet.put(board[player], position)
     }
  end

  def total_moves(board) do
    MapSet.size(board.state[:player]) + MapSet.size(board.state[:ai])
  end

  def possible_moves(free) do
    #for each column, get the lowest y value in free
  end
end
