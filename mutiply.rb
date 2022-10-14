# frozen_string_literal: true

arr_result = []

def calc(numb)
  arr =  numb.to_s.split('').map(&:to_i)
  # 配列の中身を計算する
  result = 1
  arr.each do |f|
    result *= f
    if result.to_s.size == 6
      arr_result << i
    else
      calc(f)
    end
  end
end

Range.new(1, 100_000).each do |i|
  calc(i)
end

puts arr_result
