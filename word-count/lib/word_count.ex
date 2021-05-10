defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    String.downcase(sentence)
    |> String.split(~r{[$%|_\*!&@^:\s,]}, trim: true)
    |> Enum.frequencies()
  end
end
