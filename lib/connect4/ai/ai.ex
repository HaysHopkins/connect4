defmodule Connect4.AI do
  @max_depth  42

  def get_move(board) do
    # Abstract this out in genserver that parallelizes
    Enum.map(Connect4.Mover.possible_moves(board), fn(move) ->
      negamax(Connect4.Mover.move(board, move), @max_depth - Connect4.Mover.total_moves(position), 1)
    end)
  end

  defp negamax(board, 0, perspective), do: perspective * heuristic_value(position)
  defp negamax(board, depth, perspective) do
    if Connect4.Analyzer.winning_position(board) do
      perspective * heuristic_value(board)
    else
      max_value = :negative_infinity
      Enum.map(Connect4.Mover.possible_moves(board), fn(move) ->
        value = negamax(Connect4.Mover.move(board, move), depth-1, -perspective)
        max_value = compare(max_value, value)
      end)

      max_value
    end
  end

  defp heuristic_value(board) do
    case Connect4.Analyzer.winning_position(board) do
      true -> 10
        _  -> 0
    end
  end

  defp compare(:negative_infinity, value), do: value
  defp compare(max_value, value), do: Enum.max([max_value, value])
end
