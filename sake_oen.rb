# frozen_string_literal: true

require 'csv'

# csv = CSV.foreach("sake.csv",headers: true) do |row|
#     p row
#   end

header_converter = ->(h) { h.to_sym }
csv_options = {
  headers: true, # headerあり
  header_converters: header_converter, # headerをシンボルに置き換え
  encoding: Encoding::UTF_8 # データはUTF-8
}
csv = CSV.foreach('sake.csv', headers: true) do |csvs|
  # p csv
  # データの検索
  result = csvs.select { |row| row.to_h if row.field?('hoge') }
end

p result
