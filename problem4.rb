digits = 3

min = 10**(digits - 1)
max = (10**3) - 1

min_num = min**2
max_num = max**2

range = (min_num..max_num)

def is_kaibun?(num)
  num.to_s == num.to_s.reverse
end

def is_same_digit(num1, num2)
  num1.to_s.length == num2.to_s.length
end

results = []
range.each do |num|
  if is_kaibun?(num)
    (min..max).each do |el|
      if num % el == 0 && is_same_digit(el, num / el)
        results << num
      end
    end
  end
end

puts results.max