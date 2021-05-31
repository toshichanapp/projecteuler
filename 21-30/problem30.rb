# TODO: limitの理由を記述する
limit = 9 ** 5 * 6
ans = (2..limit).select do |num|
  num == num.to_s.split('').map(&:to_i).inject(0){ |sum, n| sum + n ** 5 }
end

p ans.sum
