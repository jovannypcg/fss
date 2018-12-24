lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'fss/version'

Gem::Specification.new do |spec|
  spec.name           = 'fss'
  spec.version        = FSS::VERSION
  spec.summary        = "File Service Service"
  spec.description    = "Data handling gem to communicate to Minio"
  spec.authors        = ["Jovanny Cruz"]
  spec.email          = 'jovanny-cruz@figure-eight.com'
  spec.files          = Dir.glob("{lib}/**/*")
  spec.require_paths  = ["lib"]
  spec.license        = 'MIT'

  spec.add_dependency 'aws-sdk-s3', '~> 1.30'
end
