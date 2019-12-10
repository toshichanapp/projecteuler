max_limit = 1_000
(1..max_limit).to_a.combination(3).select do |a, b, c|
  next unless a + b + c == max_limit
  a ** 2 + b ** 2 == c ** 2
end.first.reduce(:*)
