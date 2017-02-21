require 'net/http'
require 'uri'
require 'json'
require_relative 'DataIp'



class Request


  attr_accessor :hash

  def self.get(remote)
    fregoo = new(remote)
    RequestObject.new(fregoo.hash)
  end

  def initialize(remote)
    go_url(remote)
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






