require 'prime'

# 循環小数になりえる数字は訳文して分母に2, 5以外の数字があるもの
candidates = (1...1000).select do |num|
  Prime.prime_division(num).any?{ |p, _| p == 2 || p == 5 }
end
#
# @memo = {}
# candidates.map do |num|
#   hoge = '9'
#   remain = -1
#   count = 0
#   while remain != 0
#     remain = hoge.to_i % num
#     count += 1
#     hoge << '9'
#   end
#   @memo[num] = count
# end
#
# p @memo
