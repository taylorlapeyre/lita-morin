Gem::Specification.new do |spec|
  spec.name          = "lita-morin"
  spec.version       = "0.0.1"
  spec.authors       = ["Taylor Lapeyre"]
  spec.email         = ["taylorlapeyre@gmail.com"]
  spec.description   = %q{Shows a Super Normal quote from Dave Morin when you mention him.}
  spec.summary       = %q{Shows a Super Normal quote from Dave Morin when you mention him.}
  spec.homepage      = "https://github.com/taylorlapeyre/lita-morin"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
