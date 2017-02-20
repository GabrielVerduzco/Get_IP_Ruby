require 'net/http'
require 'uri'
require 'json'
require_relative 'DataIp'

class Fregoo
  attr_accessor :hash

  def initialize(url)
    go_url(url)
  end



  private
  def go_url(url)
     open('http://freegeoip.net/json/' + url)
  end

  def open(url)
    url = Net::HTTP.get(URI.parse(url))
    parse_url url
  end

  def parse_url(url)
    @hash = JSON.parse url
  end

end

fregoo = Fregoo.new('www.github.com')
obj = DataIp.new(fregoo.hash)
p obj.ip
p obj.longitude
p obj.time_zone





