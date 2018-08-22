fizzbuzz = fn
	[0, 0, _] -> "FizzBuzz"
	[0, _, _] -> "Fizz" 
	[_, 0, _] -> "Buzz"
	[_, _, a] -> a 
end

IO.puts fizzbuzz.([0, 0, 10])
IO.puts fizzbuzz.([0, 1410, 10])
IO.puts fizzbuzz.([12, 0, 121])
IO.puts fizzbuzz.([12, 12, 121])