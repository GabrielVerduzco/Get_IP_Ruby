require_relative "fregoo_ip/request"

module FregooIp
   def self.get(remote)
    fregoo = Request.new(remote)
    RequestObject.new(fregoo.hash)
  end
end
