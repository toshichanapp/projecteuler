# 右上
# 奇数の二乗
# (2n + 1) ** 2
#
# 右下
# (2n + 1) ** 2 - 6n
#
# 左下
# (2n + 1) ** 2 - 4n
#
# 左上
# (2n + 1) ** 2 - 2n
#
limit = (1001 - 1) / 2

(1..limit).inject(1) do |sum, num|
  base = (2 * num + 1) ** 2
  sum += 4 * base - 12 * num
end
