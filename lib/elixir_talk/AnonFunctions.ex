defmodule ElixirTalk.AnonFunctions do

  def mapA(lst) do
    Enum.map(lst, fn(x) -> x + 2 end)
  end

  def mapB(lst) do
    predicate = fn(x) -> x + 10 end
    Enum.map(lst, predicate)
  end

  def foo(x) do
    fn(x) ->
      x * 100
    end.(x)
  end

end
