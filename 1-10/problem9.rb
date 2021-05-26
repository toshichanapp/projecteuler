max_limit = 1_000
(1..max_limit).to_a.combination(3).select do |a, b, c|
  a ** 2 + b ** 2 == c ** 2 && a + b + c == max_limit
end.first.reduce(:*)
