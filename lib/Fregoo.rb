require 'net/http'
require 'uri'
require 'json'
require_relative 'DataIp'

class Fregoo
  attr_accessor :hash, :url

  def initialize() 
  end

  def get(url)
    open('http://freegeoip.net/json/' + url)
  end

  private
  def open(url)
    url = Net::HTTP.get(URI.parse(url))
    parse_url url
  end

  def parse_url(url)
    @hash = JSON.parse url
  end

end

fregoo = Fregoo.new()
fregoo.get('www.google.com')
obj = DataIp.new(fregoo.hash)
p obj.ip
p obj.longitude
p obj.time_zone





