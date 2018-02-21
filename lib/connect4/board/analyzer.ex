defmodule Connect4.Analyzer do
  import MapSet, only: [delete: 2, put: 2, size: 1, union: 2, to_list: 1]
  import Enum,   only: [reduce: 3, any?: 2, subset?: 2]
  import Stream, only: [flat_map: 2]

  def winning_position?(board, 1), do: _winning_position?(board.state[:ai])
  def winning_position?(board, _), do: _winning_position?(board.state[:player])

  defp _winning_position?(player) do
    false
    |> check_horizontal(player)
    |> check_vertical(player)
    |> check_diagonal(player)
  end

  defp check_horizontal(true, player), do: true
  defp check_horizontal(status, player) do
    #for each y value, return if not 4, check if 4 in a row
  end

  defp check_vertical(true, player), do: true
  defp check_vertical(status, player) do
    #for each x value, return if not 4, check if 4 in a row
  end

  defp check_diagonal(status, player) do
    to_list(player)
    |> flat_map(fn(position) -> possible_diagonals(position) end)
    |> any?(fn(status) ->  subset?(diag, player) end)
  end

  defp possible_diagonals(position) do
    # opposite diag with position in 1,2,3,4
    # matching diag with position in 1,2,3,4
  end
end
