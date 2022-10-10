# frozen_string_literal: true

# 漸化式（シンプル）
input_line = gets.split(' ').map(&:to_i)

x, d, k = input_line

arr = [x]

(1..k).each do |i|
  arr[i] = arr[i - 1] + d
end

puts arr[k - 1]

# 漸化式②（等差）
x, d = gets.split(' ').map(&:to_i)
second = gets.to_i

arr = [x]

Range.new(1, 1000).each do |i|
  arr[i] = arr[i - 1] + d
end

second.times do
  k = gets.to_i - 1
  puts arr[k]
end

# 漸化式③（条件分岐)
x, d_1, d_2, k = gets.split(' ').map(&:to_i)

arr = [x]

Range.new(1, 1000).each do |i|
  arr[i] = if i.even?
             arr[i - 1] + d_1
           else
             arr[i - 1] + d_2
           end
end

puts arr[k - 1]

# 漸化式（条件が複雑）
x, d_1, d_2 = gets.split(' ').map(&:to_i)
lines = gets.to_i

arr = [x]

Range.new(1, 1000).each do |i|
  arr[i] = if i == 1
             arr[i - 1] + d_2
           elsif i.even?
             arr[i - 1] + d_1
           else
             arr[i - 1] + d_2
           end
end

lines.times do
  other_lines = gets.to_i - 1
  puts arr[other_lines]
end

# 漸化式（フィボナッチ数列）
input_line = gets.to_i
a = 1
b = 1

arr = [a, b]

Range.new(2, 40).each do |i|
  arr[i] = arr[i - 2] + arr[i - 1]
end

puts arr[input_line - 1]

# 漸化式（三項間）
num = gets.to_i
a = 1
b = 1
arr = [a, b]

Range.new(2, 40).each do |i|
  arr[i] = arr[i - 2] + arr[i - 1]
end

num.times do
  i = gets.to_i
  puts arr[i - 1]
end

# 階段の登り方
# ある段数nまでに登るまでの方法
n = gets.to_i

# 配列をn数分用意する。初期値は1段目
dp = [1] * (n + 1)

Range.new(2, n + 1).each do |i|
  dp[i] = dp[i - 1] + dp[i - 2]
end
puts dp[n]
