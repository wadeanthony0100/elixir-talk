defmodule ElixirTalk.Macros do

	defmacro unless(clause, do: exp) do
		quote do
			if(!unquote(clause), do: unquote(exp))
		end
	end

end

