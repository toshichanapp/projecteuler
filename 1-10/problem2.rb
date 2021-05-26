def create_fib_arr(first: 1, second: 2, limit: 4_000_000)
  arr = [first, second]

  while true
    sum = arr[-1] + arr[-2]
    break if sum >= limit
    arr << sum
  end
  arr
end

puts create_fib_arr.select{|num| num % 2 == 0 }.sum
