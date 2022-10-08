# frozen_string_literal: true

# 配列の中身を出力
num = gets.to_i

# これでもいける
# num.times do
#     output = gets.chomp.to_i
#     puts output
# end

(0..num).each do |_i|
  output = gets.chomp.to_i
  puts output
end

# 配列の中身を合計
input_line = [1, 3, 5, 6, 3, 2, 5, 23, 2]

puts input_line.inject(0) { |sum, num| sum += num }

# 5以上の整数の合計
input_line = [4, 0, 5, -1, 3, 10, 6, -8]

arr = []

input_line.filter { |x| arr << x if x >= 5 }

puts arr.inject(0) { |sum, num| sum += num }
