# frozen_string_literal: true

input_line = gets.to_i

arr = []
input_line.times do
  # 入力された値をiに直して配列に入れる
  a, b = gets.split(' ').map(&:to_i)
  arr << if a.equal?(b)
           (a * b)
         else
           (a + b)
         end
end

puts arr.inject(0) { |sum, num| sum += num }
