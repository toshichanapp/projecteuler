@fib = { 1 => 1, 2 => 1 }

def calc_fib(num)
  return @fib[num] if @fib[num]

  @fib[num] = calc_fib(num - 1) + calc_fib(num - 2)
end

def show_fib(num)
  @fib[num] || calc_fib(num)
end

1.upto(Float::INFINITY) do |n|
  if show_fib(n).to_s.length == 1000
    p n
    break
  end
end
