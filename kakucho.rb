class Integer
  require 'prime'
  # https://qiita.com/norioc/items/5c270ad6ff5d22d1efd0

  # これはすでにある
  # https://docs.ruby-lang.org/ja/latest/method/Integer/i/prime=3f.html
  # def prime?
  #   Prime.prime?(self)
  # end

  # 約数の列挙
  # https://github.com/universato/ruby-prime/commit/b54f2fcb4a3658183e068e66898df4be3ebbbfde
  def divisors
    if prime?
      [1, self]
    elsif self == 1
      [1]
    else
      xs = prime_division.map{ |p, n| Array.new(n + 1){ |e| p**e } }
      x = xs.pop
      x.product(*xs).map{ |t| t.inject(:*) }.sort
    end
  end

  # 約数の個数
  def number_divisors
    Prime.prime_division(self).map{ |_, e| e + 1 }.inject(:*)
  end

  # 約数の総和
  def sum_divisors
    Prime.prime_division(self).map {|p, e| (p ** (e + 1) - 1) / (p - 1) }.inject(:*)
  end

  # 真の約数の総和
  # use next if self.prime?
  def sum_true_divisors
    sum_divisors - self
  end

  # 階乗
  def factorial
    (1..self).inject(:*)
  end
end
