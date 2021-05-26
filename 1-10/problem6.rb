range = (1..100)
sum_of_squares = range.reduce(0){ |result, num| result + num ** 2 }
sum_squared = range.sum ** 2
puts sum_squared - sum_of_squares
