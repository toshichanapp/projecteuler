=begin
積 1
[1, 7], ・・・

積 2
[1, 6], [2, 5], [3, 4]

積 3
[1, 5], [2, 4], [3, 3]

積 4
[1, 4], [2, 3]

積 5
[1, 3], [2, 2]

積がパンデジタルになりえるのは
積 4 [1, 4], [2, 3]のみ
=end

require 'set'
@nums = (1..9).to_a
@products = Set.new

def calc_product(m, n)
  @nums.permutation(m).each do |multiplicand_arr|
    multiplier_arr = @nums - multiplicand_arr
    multiplier_arr.permutation(n).each do |multiplier|
      product = multiplier.join.to_i * multiplicand_arr.join.to_i
      next unless product.to_s.length == 4
      set = Set.new(product.to_s.chars.map(&:to_i)) + Set.new(multiplier) + Set.new(multiplicand_arr)
      if !set.include?(0) && set.length == @nums.length
        @products << product
      end
    end
  end
end

calc_product(1, 4)
calc_product(2, 3)
p @products.sum
