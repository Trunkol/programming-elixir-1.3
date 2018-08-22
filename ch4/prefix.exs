prefix = fn pre -> (fn name -> "#{pre} #{name}" end) end

mrs = prefix.("Mrs")

IO.puts mrs.("Emerson")
IO.puts prefix.("Elixir").("Rocks")
