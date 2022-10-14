# frozen_string_literal: true

arr = []
Range.new(1, 50_000_000).each do |i|
  arr << if (i % 15).zero?
           'FizzBuzz'
         elsif (i % 5).zero?
           'Buzz'
         elsif (i % 3).zero?
           'Fizz'
         else
           i
         end
end

puts arr.join('').count('1')
