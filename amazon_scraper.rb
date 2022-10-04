# frozen_string_literal: true

require 'proxycrawl'
require 'nokogiri'
api = ProxyCrawl::API.new(token:)

url = 'https://www.amazon.com/dp/B081FZV45H'
html = api.get(url)

doc = Nokogiri::HTML(html.body)
product_name = doc.at('#productTitle').text.strip
product_price = doc.at('#priceblock_ourprice').text.strip

p doc
puts "Amazon Product URL: #{url}"
puts "Amazon Product Name: #{product_name}"
puts "Amazon Product Price: #{product_price}"
