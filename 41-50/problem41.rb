require 'prime'
ans = []
9.downto(1) do |n|
  ans = (1..n).to_a.permutation(n).map(&:join).map(&:to_i).select{|arr| arr.prime?}.to_a
  break unless ans.empty?
end
p ans.max
