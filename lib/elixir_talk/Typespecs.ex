defmodule ElixirTalk.Typespecs do

  @spec foo :: string
  def foo do
    "Hello, World!"
  end

  foo = [firstName: "José", lastName: "Valim"]
  bar = [{:firstName, "José"}, {:lastName, "Valim"}]


  def bar do
    ElixirTalk.Typespecs.foo
  end

end
