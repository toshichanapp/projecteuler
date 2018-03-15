N = 1000
third = []
fifth = []

N.times do |i|
  third << i if i % 3 == 0
  fifth << i if i % 5 == 0
end

p third.concat(fifth).uniq.reduce(:+)
