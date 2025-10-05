defmodule Suma do
  def main do
    [
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ]
    |>sumar()
    |> Util.mostrar_mensaje()
  end

  def sumar(matriz),do: sumar(matriz,0)

  def sumar([],acc), do: acc
  def sumar([fila|resto], acc) do
    sumar(resto,acc + sumar_fila(fila))
  end

  def sumar_fila([]), do: 0
  def sumar_fila([elem|resto])do
    elem + sumar_fila(resto) #se podria usar enum.sum pero pa meterle recursividad esta así :)
  end
end
Suma.main()
