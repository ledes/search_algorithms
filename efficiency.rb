require 'benchmark'
require 'pry'
require_relative 'search'

numbers = (1..1000000).to_a
random_numbers = []
1000.times do
  random_numbers << numbers.sample
end

Benchmark.bm(30) do |x|
  x.report("linear search:") do
    random_numbers.each do |number|
      Search.linear(numbers, number)
    end
  end

  x.report("binary search:") do
    random_numbers.each do |number|
      Search.binary(numbers, number)
    end
  end

  x.report("binary recursive search:") do
    random_numbers.each do |number|
      Search.binary_recursive(numbers, number)
    end
  end
end
