require './kakucho'

# 完全数を除く必要があることに注意
tds = (3...10_000).select do |num|
  next if num.prime?

  sum = num.sum_true_divisors
  hoge = sum.sum_true_divisors

  sum != num && num == hoge
end.sum

p tds

