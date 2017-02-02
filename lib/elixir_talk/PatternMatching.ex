defmodule ElixirTalk.PatternMatching do
  
  def numberWords(1) do
    "one"
  end

  def numberWords(2) do
    "two"
  end

  def numberWords(3) do
    "three"
  end
  
  def numberWords(_) do
    "RIP"
  end

  def numberWords do
    fn
      1 -> "one"
      2 -> "two"
      3 -> "three"
      4 -> "four"
      x -> "probably five"
    end.(:rand.uniform(5))
  end

end

