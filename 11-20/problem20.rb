class Integer
  def factorial
    (1..self).inject(:*)
  end
end

p 100.factorial.to_s.split('').map(&:to_i).sum
