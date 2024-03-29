defmodule StatsPropertyTest do
	use ExUnit.Case
	use ExCheck

	describe "Stats on lists of ints" do
		property "single element lists are their own sum" do
			for_all number in real do
				Stats.sum([number]) == number
			end

			property "count not negative" do
				for_all l in list(int), do: Stats.count(l) >= 0
			end
	
			property "single element lists are their own sum" do
				for_all number in real do
					Stats.sum([number]) == number
				end
			end
		end
	end
end