# FIXME: wrong answer!!!

require 'set'
@nums = (1..9).to_a
@products = Set.new

def calc_product(m, n)
  @nums.permutation(m).each do |multiplicand_arr|
    multiplier_arr = @nums - multiplicand_arr
    multiplier_arr.permutation(n).each do |multiplier|
      product = multiplier.join.to_i * multiplicand_arr.join.to_i
      set = Set.new(product.to_s.chars.map(&:to_i)) + Set.new(multiplier) + Set.new(multiplicand_arr)
      if set.length == @nums.length && product <= 9999
        @products << product
      end
    end
  end
end

calc_product(1, 4)
calc_product(2, 3)
p @products.sum
