# frozen_string_literal: true

arr = [0]
Range.new(1, 100_000).each do |i|
  arr[i] = "#{i}SHEEP"
end

puts arr.join('').slice(77_777, 20)
