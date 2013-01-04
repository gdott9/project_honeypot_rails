# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'project_honeypot_rails/version'

Gem::Specification.new do |gem|
  gem.name          = "project_honeypot_rails"
  gem.version       = ProjectHoneypotRails::VERSION
  gem.authors       = ["Guillaume DOTT"]
  gem.email         = ["guillaume+github@dott.fr"]
  gem.description   = %q{project_honeypot_rails provides integration between project_honeypot and rails 3}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'activesupport'
  gem.add_runtime_dependency 'project_honeypot'
end
