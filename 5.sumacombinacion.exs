defmodule SumaCombinada do
  def main do
    [1,2,3,4,5,6,7,8,9,10]
    |> suma(17)
    |>IO.puts()
  end

  def suma(lista,n),do: suma(lista,n,0,1)
  def suma(lista,n, i, j) do
    cond do
      i >= length(lista) ->
        "No se encontró ninguna posible combinación"

      j >= length(lista) ->
        suma(lista, n, i + 1, i + 2)

      true ->
        a = Enum.at(lista, i)
        b = Enum.at(lista, j)

        if suman?(a, b, n) do
          "La combinación es #{a} + #{b} que suman #{n}"
        else
          suma(lista, n, i, j + 1)
        end
    end
  end

  def suman?(a,b,n)when a+b ==n, do: true
  def suman?(_,_,_), do: false

end
SumaCombinada.main()
