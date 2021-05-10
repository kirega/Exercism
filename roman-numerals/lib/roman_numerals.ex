defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @romans %{
    1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M"
  }
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    keys = Map.keys(@romans) |> Enum.sort(:desc)
    roman(keys, number, "")
  end

  defp roman(_, 0, result), do: result

  defp roman([max | rest] = keys, number, result) do
    if number >= max do
      roman(keys, number - max, result <> @romans[max])
    else
      roman(rest, number, result)
    end
  end
end
