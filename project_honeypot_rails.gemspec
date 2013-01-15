# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'project_honeypot_rails/version'

Gem::Specification.new do |gem|
  gem.name          = "project_honeypot_rails"
  gem.version       = ProjectHoneypotRails::VERSION
  gem.authors       = ["Guillaume DOTT"]
  gem.email         = ["guillaume+github@dott.fr"]
  gem.summary       = %q{project_honeypot_rails provides integration between project_honeypot and rails 3}
  gem.description   = %q{project_honeypot_rails provides integration between project_honeypot and rails 3
    to prevent suspicious IP to access your website}
  gem.homepage      = "https://github.com/gdott9/project_honeypot_rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'activesupport', '>= 3.0'
  gem.add_runtime_dependency 'actionpack', '>= 3.0'

  gem.add_runtime_dependency 'project_honeypot'
end
