require 'net/http'
require 'uri'
require 'json'



def open(url)
  Net::HTTP.get(URI.parse(url))
end



page_content = open('http://freegeoip.net/json/github.com')
puts page_content
