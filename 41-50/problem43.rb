# FIXME: more faster
require 'prime'

prime_arr = Prime.take(7)
(0..9).to_a.permutation(10).select do |arr|
  next if arr[0] == 0

  arr[1..-1].each_cons(3).map(&:join).map(&:to_i).zip(prime_arr).all?{|num1, num2| (num1 % num2).zero? }
end.sum do |arr|
  arr.join.to_i
end
