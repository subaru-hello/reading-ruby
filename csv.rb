# frozen_string_literal: true

require 'csv'

csv_text = <<~CSV_TEXT
  id,name,price,percentage,amount,expiration_date
  1,レモンサワー,160,5,350,2023-10-04
  2,ビール,160,5,350,2023-10-04
  3,ハイボール,160,7,350,2023-10-04
  4,梅酒,160,5,350,2023-10-04
  5,ウィスキー,160,5,350,2023-10-04
  6,赤ワイン,300,12,90,2023-10-04
  7,白ワイン,300,12,90,2023-10-04
CSV_TEXT

IO.write 'sake.csv', csv_text

# ファイルから一行ずつ
CSV.foreach('sake.csv') do |row|
  p row
end
# => ["Ruby", "1995"]
#    ["Rust", "2010"]

# ファイルから一度に
p CSV.read('sake.csv')
# => [["Ruby", "1995"], ["Rust", "2010"]]

# 文字列から一行ずつ
CSV.parse(csv_text) do |row|
  p row
end
# => ["Ruby", "1995"]
#    ["Rust", "2010"]

# 文字列から一度に
p CSV.parse(csv_text)
# => [["Ruby", "1995"], ["Rust", "2010"]]
