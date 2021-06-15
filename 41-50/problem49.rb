require 'set'
require 'prime'
@memo = Set.new
candidates = []
(1000..9999).each do |num|
  next false if @memo.include?(num)
  nums = num.to_s.chars.permutation(4).map(&:join).map(&:to_i)
  @memo += Set.new(nums)
  primes = Set.new(nums).select{|item| (1000..9999).include?(item)}.select{ |item| item.prime? }

  next false if primes.length < 3
  candidate = primes.sort.permutation(3).select do |num1, num2, num3|
    (num1 - num2).abs == (num3 - num2)
  end

  if !candidate.empty?
    candidates << candidate
  end
end

p candidates
