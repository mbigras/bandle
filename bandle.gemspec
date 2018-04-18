
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bandle/version"

Gem::Specification.new do |spec|
  spec.name          = "bandle"
  spec.version       = Bandle::VERSION
  spec.authors       = ["Max Bigras"]
  spec.email         = ["max_bigras@gap.com"]

  spec.summary       = %q{A gem managed with Bundler}
  spec.homepage      = "https://github.com/mbigras/bandle"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "methadone", "~> 1.9.0"

  spec.add_development_dependency "aruba", "~> 0.14.0"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "cucumber", "~> 3.1.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
