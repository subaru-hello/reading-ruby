# frozen_string_literal: true

h = {}

ha = {}

a = %w[Subaru Kanako Tokio]
b = Range.new(0, 3)
t = a.map { |i, x| [i, x] }.to_h

res = t.each do |_key, _val|
  key = 24
end

ha['subaru'] = '25歳'

puts res, ha

# # 生徒の名前
# students = ["A", "B", "C"]
# input = gets.chomp.split(" ")
# input_size = input.size

# # "80 70 90"と入力して、辞書にまとめて代入
# scores = {}
# for  i, score in input
#     scores[students[i]] = score.to_i
# end
# # キーとして"B"を指定
# puts scores
# # "70"と出力
