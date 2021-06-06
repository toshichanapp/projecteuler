ans = (1..1_000_000).select do |num|
  num.to_s == num.to_s.reverse && num.to_s(2) == num.to_s(2).reverse
end.sum

p ans
