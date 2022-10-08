# frozen_string_literal: true

n = 5
a = [3, 5, 1, 4, 2]
total = 0
# a[0].each do |num|

(1..n).each do |_i|
  if a[0] == a.min
    a.shift
  elsif a[0] == a.max
    a.push(a[0])
    a.shift
    total += 1
  end
end

puts a
