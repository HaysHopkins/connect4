defmodule Connect4.AI do
  @max_depth  42

  def get_computer_move(position) do
    # Abstract this out in genserver that parallelizes
    Enum.map(possible_moves(position), fn(move) ->
      negamax(move, max_depth - total_moves(position), 1)
    end)
  end

  defp negamax(_position, 0, perspective), do: perspective * heuristic_value(position)
  defp negamax(position, depth, perspective) do
    if winning_position(position) do
      return perspective * heuristic_value(position)
    end

    max_value = :negative_infinity
    Enum.map(get_next_moves(position), fn(move) ->
      value = negamax(move, depth-1, -perspective)
      max_value = compare(max_value, value)
    end)

    max_value
  end

  defp heuristic_value(position) do
    case Connect4.Analyzer.winning_position(position) do
      true -> 10
        _  -> 0
    end
  end

  defp compare(:negative_infinity, value), do: value
  defp compare(max_value, value), do: Enum.max([max_value, value])
end
