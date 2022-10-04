
require 'nokogiri'
require 'open-uri'
require 'colored'

query = 'ruby'
page = '2'
# doc = Nokogiri::HTML(URI.open("https://www.amazon.co.jp/s?k=%E9%85%92&__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=ZJ96DE75GLLB&sprefix=%E9%85%92%2Caps%2C196&ref=nb_sb_noss_1"))
doc_sake = Nokogiri::HTML.parse(URI.open("https://www.amazon.co.jp/s?k=%E9%85%92&crid=1MNBUHLE5UA9L&sprefix=%E9%85%92%2Caps%2C173&ref=nb_sb_noss_1"))
link = doc_sake.at_css('a.a-link-normal').attribute 'href'


link_element = doc_sake.at_css('span.a-size-mini.a-color-base.a-text-normal')

output = link.text.strip
# name = doc_sake.css('h2.a-size-mini span.a-size-mini').content
p '--name--'
# p name, link
p link_element
p "Sake link: #{output}"