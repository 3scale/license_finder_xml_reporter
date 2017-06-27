# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "license_finder_xml_reporter/version"

Gem::Specification.new do |spec|
  spec.name          = "license_finder_xml_reporter"
  spec.version       = LicenseFinderXmlReporter::VERSION
  spec.authors       = ["dd di cesare"]
  spec.email         = ["didi@posteo.net"]

  spec.summary       = %q{XML reporter for license finder}
  spec.description   = %q{XML reporter for license finder}
  spec.homepage      = "https://github.com/3scale/license_finder_xml_reporter"
  spec.license       = "Apache 2.0"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency 'license_finder'
end
