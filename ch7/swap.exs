defmodule Swapper do
    def swap([]), do: []
    def swap([a, b | tail]), do: [ b, a | swap(tail) ]
    def swap([_]), do: raise "Não pode trocar uma lista com elementos impares"

end