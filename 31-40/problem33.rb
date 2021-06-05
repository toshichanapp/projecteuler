fuga = (10..99).to_a.combination(2).select do |a, b|
  aq, ar = a.divmod(10)
  bq, br = b.divmod(10)
  next if ar == 0 || br == 0
  next if ar != bq

  Rational(aq, br) == Rational(a, b)
end
a, b = fuga.transpose
p Rational(a.inject(:*), b.inject(:*))
