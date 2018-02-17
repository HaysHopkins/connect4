defmodule Conntect4.Mover do
  def move(board, player, position) do
    %{board |
        :free  => MapSet.delete(board.free, position),
        player => MapSet.put(board[player], position)
     }
  end

  def total_moves(board) do

  end

  def possible_moves(free) do
    #for each column, get the lowest y value in free
  end
end
