require 'net/http'
require 'uri'
require 'json'
require_relative 'DataIp'

class Fregoo
  attr_accessor :hash

  def initialize
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
hash = fregoo.get('www.github.com')
obj = DataIp.new(hash)
p obj.ip
p obj.longitude
p obj.time_zone





