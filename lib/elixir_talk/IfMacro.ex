defmodule ElixirTalk.If do

  defmacro if(condition, clauses) do
    build_if(condition, clauses)
  end

  defp build_if(condition, do: do_clause) do
    build_if(condition, do: do_clause, else: nil)
  end

  defp build_if(condition, do: do_clause, else: else_clause) do
    optimize_boolean(quote do
                       case unquote(condition) do
                         x when x in [false, nil] -> unquote(else_clause)
                         _ -> unquote(do_clause)
                       end
    end)
  end

  defp build_if(_condition, _arguments) do
    raise(ArgumentError, "invalid or duplicate keys for if, only \"do\" " <>
            "and an optional \"else\" are permitted")
  end

  def optimize_boolean(x) do x end

end


