range = (1..100)
sum_of_squares = range.map{|num| num ** 2}.reduce(:+)
sum_squared = range.reduce(:+) ** 2
puts sum_squared - sum_of_squares
