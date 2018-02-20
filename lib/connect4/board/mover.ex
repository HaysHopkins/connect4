defmodule Connect4.Mover do
  import MapSet, only: [delete: 2, put: 2, size: 1, union: 2, to_list: 1]
  import Map, only: [update: 4]
  import Enum,   only: [reduce: 3]

  def move(board, player, position) do
    %{board |
        :free  => delete(board.free, position),
        player => put(board[player], position)
     }
  end

  def total_moves(board) do
    size(board.state[:player]) + size(board.state[:ai])
  end

  def possible_moves(board) do
    board.state[:free]
    |> reduce(%{}, fn(position, acc) ->
      case Map.get(acc, elem(position, 0)) do
        y when is_integer(y) ->
          new_y = Enum.min([y, elem(position, 1)])
          Map.replace!(acc, elem(position, 0), new_y)
        _ ->
          Map.put(acc, elem(position, 0), elem(position, 1))
      end
    end)
    |> Map.to_list
  end
end
