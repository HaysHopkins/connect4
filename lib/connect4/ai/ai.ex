defmodule Connect4.AI do
  @max_depth  42

  def get_move(board) do
    # Abstract this out in genserver that parallelizes
    Enum.map(Connect4.Mover.possible_moves(board), fn(move) ->
      negamax(Connect4.Mover.move(board, move), @max_depth - Connect4.Mover.total_moves(position), 1)
    end)
  end

  defp negamax(board, 0, perspective), do: -perspective * heuristic_value(position)
  defp negamax(board, depth, perspective) do
    if Connect4.Analyzer.winning_position(board) do
      -perspective * 10
    else
      board
      |> Connect4.Mover.possible_moves()
      |> Enum.reduce(:negative_infinity, fn(move, max_value) ->
           negamax(Connect4.Mover.move(board, move), depth-1, -perspective)
           |> compare(max_value)
         end)
    end
  end

  defp heuristic_value(board) do
    case Connect4.Analyzer.winning_position(board) do
      true -> 10
        _  -> 0
    end
  end

  defp compare(value, :negative_infinity), do: value
  defp compare(value, max_value), do: Enum.max([value, max_value])
end
