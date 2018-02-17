defmodule Conntect4.Mover do
  def move(board, player, position) do
    %{board |
        :free  => MapSet.delete(board.free, position),
        player => MapSet.put(board[player], position)
     }
  end
end
