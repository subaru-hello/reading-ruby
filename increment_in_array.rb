# frozen_string_literal: true

input_line = gets.split(' ').map(&:to_i)
input_second = gets.split(' ').map(&:to_i)

a = input_line[1] - 1
b = input_line[2] - 1
puts input_second[a..b].inject(0) { |sum, num| sum += num }
