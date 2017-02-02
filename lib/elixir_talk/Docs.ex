defmodule ElixirTalk.Docs do
  @moduledoc """
  Provides math-related functions.
  """

  @doc """
  Calculates the sum of two numbers.
  #
  ## Examples

      iex> Math.sum(1, 2)
      3
  """
  def sum(a, b), do: a + b

  @doc """
  Subtract second param from first

      iex> Math.diff(10, 4)
      6

  """
  def diff(a, b), do: a - b
end
