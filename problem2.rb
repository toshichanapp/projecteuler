def make_fib(arr, max)
  while true
    next_fib = arr[-1] + arr[-2]
    if next_fib < max
      arr << next_fib
    else
      return arr
    end
  end
end


init = [1, 2]
fib = make_fib(init, 4_000_000)
even_fib = fib.select(&:even?)

puts even_fib.reduce(:+)