lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'h2ocube_rails_development'
  spec.version       = '0.5.0'
  spec.authors       = ['Ben']
  spec.email         = ['ben@zfben.com']
  spec.description   = 'Just a collection for development gems'
  spec.summary       = 'Just a collection for development gems'
  spec.homepage      = 'https://github.com/h2ocube/h2ocube_rails_development'
  spec.license       = 'MIT'
  spec.required_ruby_version = '~> 2.3'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # for all
  spec.add_dependency 'h2ocube_rails_assets'
  spec.add_dependency 'h2ocube_rails_cache'
  spec.add_dependency 'h2ocube_rails_puma'

  # for development & test

  spec.add_dependency 'factory_girl_rails'
  spec.add_dependency 'pry-rails'
  spec.add_dependency 'rspec-rails'

  # for development only

  spec.add_dependency 'annotate'
  spec.add_dependency 'meta_request'
  spec.add_dependency 'rails_stats'
  spec.add_dependency 'spring'
  spec.add_dependency 'spring-commands-rspec'

  # for test only
  spec.add_dependency 'capybara'
  spec.add_dependency 'poltergeist'
  spec.add_dependency 'rspec_junit_formatter'
  spec.add_dependency 'timecop'
  spec.add_dependency 'webmock'

  # install but don't require
  spec.add_dependency 'capistrano'
  spec.add_dependency 'capistrano-bundler'
  spec.add_dependency 'capistrano-rails'
  spec.add_dependency 'capistrano-rbenv'
  spec.add_dependency 'powder'
  spec.add_dependency 'rubocop'
  spec.add_dependency 'whenever'
end
