# frozen_string_literal: true

a = Array([1, 4])
vv = [3, 4]

aa = proc do |arr|
  if arr.size == 2
    puts vv[0]
  else
    puts vv[1]
  end
end

puts aa.call(a)
