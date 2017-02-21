require "fregoo/request"
require "fregoo/version"
require "fregoo/fregoo_data"

module Fregoo
  def self.get(remote)
    fregoo = Request.new(remote)
    FregooData.new(fregoo.hash)
  end
end
