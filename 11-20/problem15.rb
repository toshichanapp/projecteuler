#40! / 20! * 20!

class Integer
  def factorial
    (1..self).inject(:*)
  end
end

p 40.factorial / (20.factorial)**2
