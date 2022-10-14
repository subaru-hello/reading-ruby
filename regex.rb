str = "takoyaki!! tabetai!!"
pattern = /.*yaki/
pattern_after = /yaki.*/

puts "yakiの前 #{str.match(pattern)}"
puts "yakiの後 #{str.match(pattern_after)}"

num = '1a2-b3c4-d5e6f-7g8h9i'

puts "数字のみ #{num.gsub(/[^\d]/, "").to_i}"
puts "文字のみ #{num.gsub(/[\d]/, "")}"
puts "ハイフン毎 #{num.gsub(/[\d]/, "").split("-")}"

tag = "<div class='hoge'> HOGE </div>"

tag_and_class = %r{<div.*>.*</div.*>}
tag_pattern = %r{<div>.*</div>}

puts "クラス名とタグの中身 #{tag.match(tag_and_class)}"
puts "タグの中身 #{tag.match(tag_pattern)}"