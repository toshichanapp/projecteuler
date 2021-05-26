require 'prime'
(1..20).map {|num| Prime.prime_division(num)}.flatten.each_slice(2).group_by{|arr| arr[0]}.map do |_, arr|
  arr.max_by{|nums| nums[1] }
end.map do |a, b|
  a ** b
end.reduce(:*)
