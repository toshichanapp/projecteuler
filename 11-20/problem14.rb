memo = { 1 => 1 }
2.upto(1_000_000 - 1) do |num|
  dup = num
  count = 0

  while dup >= num
    dup = dup.even? ? dup / 2 : 3 * dup + 1
    count += 1
  end

  memo[num] = count + memo[dup]
end

p memo.max_by{ |_k, v| v }
