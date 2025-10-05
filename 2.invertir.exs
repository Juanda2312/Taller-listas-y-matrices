defmodule Invertir do
  def main do
    [1,2,3,4,5,6,7,8,9,10]
    |> invertir()
    |> IO.inspect()
  end

  def invertir([]),do: []
  def invertir([elem|resto]) do
    invertir(resto) ++ [elem]
  end
end
Invertir.main()
