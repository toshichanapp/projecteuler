# 参考 https://freak-da.hatenablog.com/entry/20100729/p1

require 'prime'

@divisor_quantities = { 1 => 1, 2 => 2 }

def number_divisors(n)
  Prime.prime_division(n).map{ |_, e| e + 1 }.inject(:*)
end

def factors_quantity(num)
  @divisor_quantities[num] || number_divisors(num)
end

def calc_factors_quantity(num)
  if num.even?
    factors_quantity(num / 2) * factors_quantity(num+1)
  else
    factors_quantity(num) * factors_quantity((num+1) / 2)
  end
end

3.upto(Float::INFINITY) do |n|
  fn = calc_factors_quantity(n)

  if fn >= 500
    p n*(n+1) / 2
    break
  end

  @divisor_quantities[n * (n+1)/2] = fn
end
