# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fregoo/version'

Gem::Specification.new do |spec|
  spec.name          = "fregoo"
  spec.version       = Fregoo::VERSION
  spec.authors       = ["GabrielVerduzco", "Omaury Marmolejo"]
  spec.email         = ["verduzcogab@gmail.com"]

  spec.summary       = %q{This gem can get the data using an API}
  spec.description   = %q{Tihs gem can get the data just writing an IP}
  spec.homepage      = "https://github.com/GabrielVerduzco/Get_IP_Ruby"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = "fregoo"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
