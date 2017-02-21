require 'net/http'
require 'uri'
require 'json'


module Fregoo

    class Request
      attr_accessor :hash


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

  end






