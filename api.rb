require 'net/http'
require 'uri'
require 'json'



def open(url)
  Net::HTTP.get(URI.parse(url))
end
puts "Escribe una url"
url = gets.chomp

page_content = open('http://freegeoip.net/json/' + url)
puts page_content
