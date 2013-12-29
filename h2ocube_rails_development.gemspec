# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'h2ocube_rails_development'
  spec.version       = '0.1.0'
  spec.authors       = ['Ben']
  spec.email         = ['ben@zfben.com']
  spec.description   = %q{Just a collection for development gems}
  spec.summary       = %q{Just a collection for development gems}
  spec.homepage      = 'https://github.com/h2ocube/h2ocube_rails_development'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'pry-rails'
  spec.add_dependency 'pry-remote'
  spec.add_dependency 'better_errors'
  spec.add_dependency 'binding_of_caller'
  spec.add_dependency 'meta_request'
  spec.add_dependency 'powder'
  spec.add_dependency 'vendorer'
  spec.add_dependency 'capistrano', '~> 3.0'
  spec.add_dependency 'capistrano-rbenv', '~> 2.0'
  spec.add_dependency 'capistrano-bundler'
  spec.add_dependency 'capistrano-rails'
end
