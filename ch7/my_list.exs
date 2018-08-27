defmodule MyList do
    def len([]), do: 0
    def len([_head | tail]), do: 1 + len(tail)

    def square([]), do: []
    def square([head | tail]), do: [ head*head | square(tail) ]

    def add_1([]), do: []
    def add_1([head | tail]), do: [ head + 1 | add_1(tail) ]

    def map([], _func), do: []
    def map([head | tail], func), do: [ func.(head) | map(tail, func) ]

    def sum(list), do: _sum(list, 0)

    defp _sum([], total), do: total
    defp _sum([head | tail], total), do: _sum(tail, total+head)
    
    def sum2([]), do: 0
    def sum2([head | tail]), do: head + sum2(tail)

    def reduce([], value, _), do: value
    def reduce([ head | tail ], value, func) do
      reduce(tail, func.(head, value), func)
    end

    def mapsum([], _), do: 0
    def mapsum([ head | tail ], func) do
      func.(head) + mapsum(tail, func)
    end

    def max(list) do
      _max(list, nil)
    end

    defp _max([], current_max) do
      current_max
    end

    defp _max([head | tail], current_max) when is_nil(current_max) do
      _max(tail, head)
    end

    defp _max([head | tail], current_max) when head >= current_max do
      _max(tail, head)
    end

    defp _max([head | tail], current_max) when head < current_max do
      _max(tail, current_max)
    end

end