defmodule Connect4.Analyzer do
  def winning_position(player) do
    false
    |> check_horizontal(player)
    |> check_vertical(player)
    |> check_diagonal(player)
  end

  defp check_horizontal(true, player), do: true
  defp check_horizontal(status, player) do

  end

  defp check_vertical(true, player), do: true
  defp check_vertical(status, player) do

  end

  defp check_diagonal(true, player), do: true
  defp check_diagonal(status, player) do

  end
end
