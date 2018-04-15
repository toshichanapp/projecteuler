target = 600851475143

i = 2

primes = []
while target > 1
  if target % i == 0
    primes << i
    target = target / i
  else
    i += 1
  end
end

puts primes.uniq.max