lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "onix_parser/version"

Gem::Specification.new do |spec|
  spec.name          = "onix_parser"
  spec.version       = OnixParser::VERSION
  spec.authors       = ["Hosseintoussi"]
  spec.email         = ["sltoussi@gmail.com"]

  spec.summary       = "Onix 2.1 and 3.0 parser"
  spec.homepage      = "https://github.com/hosseintoussi/onix_parser"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hosseintoussi/onix_parser"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "memory_profiler"

  spec.add_runtime_dependency "ox"
  spec.add_runtime_dependency "dry-struct"
end
