defmodule Connect4.Analyzer do
  def winning_position(player) do
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

  defp check_diagonal(true, player), do: true
  defp check_diagonal(status, player) do

  end
end
