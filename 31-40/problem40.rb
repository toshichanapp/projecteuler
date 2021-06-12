@str = (1..1000000).to_a.join
ans = 1

[1, 10, 100, 1_000, 10_000, 100_000, 1_000_000].each do |num|
  ans *= @str[num-1].to_i
end

p ans
