defmodule Connect4.AI do
  @MAX_DEPTH = 42

  def get_computer_move(position) do
    # Abstract this out in genserver that parallelizes
    Enum.map(possible_moves(position), fn(move) ->
      negamax(move, MAX_DEPTH - total_moves(position), 1)
    end)
  end

  defp negamax(_position, 0, color), do: color * heuristic_value(position)
  defp negamax(position, depth, color) do
    if winning_position(position) do
      return color * heuristic_value(position)
    end

    max_value = :negative_infinity
    Enum.map(get_next_moves(position), fn(move) ->
      value = negamax(move, depth-1, -color)
      max_value = compare(max_value, value)
    end)

    max_value
  end

  defp _compare(:negative_infinity, value), do: value
  defp _compare(max_value, value), do: Enum.max([max_value, value])
end
