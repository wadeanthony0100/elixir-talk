defmodule ElixirTalk.Pipe do

  def mapB(lst) do
    lst
    |> Enum.map( fn(x) -> x * 2 end )
    |> Enum.filter( fn(x) -> x < 10 end )
  end

end

