require './kakucho'
require 'set'

comb = (1..28123).select do |num|
  next if num.prime? || num == 1
  num < num.sum_true_divisors
end

hoge = Set.new(comb.zip(comb).map(&:sum)) | Set.new(comb.combination(2).map(&:sum))

p (Set.new((1..28123)) - Set.new(hoge)).sum
