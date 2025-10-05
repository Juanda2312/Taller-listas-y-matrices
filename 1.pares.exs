defmodule Pares do
  def main do
    [1,2,3,4,5,6,7,8,9,10]
    |> contar_pares()
    |> Util.mostrar_mensaje()
  end

  def contar_pares(lista), do: contar_pares(lista,0)

  def contar_pares([],acc),do: acc
  def contar_pares([elem|resto],acc) do
    if es_par?(elem) do
      contar_pares(resto, acc+1)
    else
      contar_pares(resto,acc)
    end
  end

  def es_par?(x) when  rem(x,2)== 0, do: true
  def es_par?(_), do: false

end
Pares.main()
