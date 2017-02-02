defmodule ElixirTalk.NamedFunctions do

  defmodule ElixirTalk.NamedFunctions.ModuleA do
    def square(x) do
      x * x
    end
  end

  defmodule ElixirTalk.NamedFunctions.ModuleB do
    def root(x) do
      :math.sqrt x
    end
  end

  def foo do
    list = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    Enum.map(list, &ElixirTalk.NamedFunctions.ModuleA.square/1)
  end

end
