defmodule Trasponer do
  def main do
    [
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ]
    |> trasponer()
    |>IO.inspect()
  end

  def trasponer(matriz),do: trasponer(matriz, 0,0, [])
  def trasponer(matriz, fila, columna, traspuesta) do
    if columna == length(Enum.at(matriz,fila)) do
      traspuesta
    else
      traspuestaaux = traspuesta ++ [elementos_columna(matriz,fila,columna,[])]
      trasponer(matriz,fila,columna+1,traspuestaaux)
    end
  end

  def elementos_columna(matriz,fila,columna, aux) do
    if fila == length(matriz) do
      aux
    else
      aux2 = aux ++ [matriz |> Enum.at(fila)|> Enum.at(columna)]
      elementos_columna(matriz, fila+1,columna,aux2)
    end
  end
end
Trasponer.main()
