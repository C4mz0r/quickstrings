# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quickstrings/version'

Gem::Specification.new do |spec|
  spec.name          = "quickstrings"
  spec.version       = Quickstrings::VERSION
  spec.authors       = ["C4mz0r"]
  spec.email         = ["aut0x@hotmail.com"]

  spec.summary       = %q{Generate different types of common strings quickly!  Great for creating test data!}
  spec.description   = %q{Do you hate typing / copying strings all over the place when your working on your app?  This gem will help you to create common strings quickly and easily.}
  spec.homepage      = "https://github.com/C4mz0r/quickstrings"
  spec.license       = "MIT"

=begin
  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end
=end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
