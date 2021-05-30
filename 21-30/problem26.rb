require 'prime'

# http://www.asahi-net.or.jp/~kc2h-msm/mathland/math05/math0502.htm
# 例えば、１割る７、の計算手順は以下のようになる。
#
# 1/7=0 余り 1
# 1 の右に 0 を置き、10/7 を計算する。
# 10/7=1 余り 3
# 3 の右に 0 を置き、30/7 を計算する。
# ……
#
# このように「余りの右に 0 を付けて 7 で割る」という操作を繰り返す。
# 余りが 1 になったら、始めの 1/7 に戻ったことになるので、そこで循環したことになる。
def count(num)
  n = 10
  count = 0
  until n % num == 1
    n = n * 10
    count += 1
  end

  count
end

candidates = (1...1000).select do |num|
  Prime.prime?(num)
end

memo = {}
max = 0
candidates.reverse.each do |num|
  # 循環節の長さはp-1の約数なので、分母の数より大きくなることはない
  break if max > num
  c = count(num)
  max = max < c ? c : max
  memo[num] = max
end
p memo

