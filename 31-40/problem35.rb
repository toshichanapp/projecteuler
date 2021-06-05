require 'prime'
require 'set'

@memo = Set.new
@rotate_prime = Set[2]

def rotate_num(num)
  num_chars = num.to_s.chars
  arr = [num]
  (num_chars.length - 1).times do |_count|
    num_chars = num_chars.rotate
    arr << num_chars.join.to_i
  end
  @memo += Set.new(arr)

  if arr.all?{ |item| Prime.prime?(item) }
    @rotate_prime += Set.new(arr)
  else
    false
  end
end

(3..1000000).each do |num|
  next unless Prime.prime?(num)
  next if num.to_s.chars.map(&:to_i).any?{|num| num.even? }
  next if @memo.include?(num)
  rotate_num(num)
end

p @rotate_prime.length

# [2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, 97]
