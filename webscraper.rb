puts "This is Scraper working with rails."
require 'open-uri'
require 'nokogiri'

url = 'https://newyork.craigslist.org/search/sya?query=macbook+white'

document = open(url)
content = document.read
parsed_content = Nokogiri::HTML(content)


parsed_content.css('.hdrlnk').each do |ads|
  title = ads.text
  link  = ads['href']
  puts title
  puts link
  puts "================================== "
end


