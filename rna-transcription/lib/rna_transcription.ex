defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    String.split(to_string(dna), "", trim: true)
    |>  Enum.map(fn char ->
        case char do
          "A" -> ?U
          "C" -> ?G
          "T" -> ?A
          "G" -> ?C
          _ -> ?\s
        end
      end)
  end
end
