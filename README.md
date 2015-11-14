# H2ocubeRailsDevelopment

[![Gem Version](https://badge.fury.io/rb/h2ocube_rails_development.png)](http://badge.fury.io/rb/h2ocube_rails_development)

Just a collection for development gems

## Installation

Add this line to your application's Gemfile:

    gem 'h2ocube_rails_development'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install h2ocube_rails_development

If using rspec and capybara, you should add below code to spec_helper.rb

    require 'rack_session_access/capybara'
    require 'webmock/rspec'

## Usage

    $ bin/rake annotate         # => Annotate all your models and factories
    $ bin/rake annotate:remove  # => Remove all annotated comments
    $ bin/rake spec             # => Just default rspec task
    $ bin/rake rubocop          # => rubocop -R
    $ bin/rake test             # => Run spec and rubocop
    $ bin/rake sort             # => Sort config/locales/*.yml by key
    $ bin/rake stats            # => Show more details than default

more details see below

## Include

For all

* h2ocube_rails_assets https://github.com/h2ocube/h2ocube_rails_assets
* h2ocube_rails_cache https://github.com/h2ocube/h2ocube_rails_cache
* h2ocube_rails_puma https://github.com/h2ocube/h2ocube_rails_puma

For development & test

* factory_girl_rails https://github.com/thoughtbot/factory_girl_rails
* pry-rails https://github.com/rweng/pry-rails
* rspec-rails https://github.com/rspec/rspec-rails

For development only

* annotate https://github.com/ctran/annotate_models
* better_errors https://github.com/charliesome/better_errors
* binding_of_caller https://github.com/banister/binding_of_caller
* meta_request https://github.com/dejan/rails_panel/tree/master/meta_request
* pry-remote https://github.com/Mon-Ouie/pry-remote
* rails_stats https://github.com/bleonard/rails_stats
* spring https://github.com/rails/spring
* spring-commands-rspec https://github.com/jonleighton/spring-commands-rspec

For test only

* capybara http://jnicklas.github.io/capybara
* database_cleaner https://github.com/bmabey/database_cleaner
* rack_session_access https://github.com/railsware/rack_session_access
* timecop https://github.com/travisjeffery/timecop
* webmock https://github.com/bblimke/webmock

Just installed but not required

* capistrano https://github.com/capistrano/capistrano
* capistrano-bundler https://github.com/capistrano/bundler
* capistrano-rails https://github.com/capistrano/rails
* capistrano-rbenv https://github.com/capistrano/rbenv
* powder https://github.com/Rodreegez/powder
* rubocop https://github.com/bbatsov/rubocop
* vendorer https://github.com/grosser/vendorer
* whenever https://github.com/javan/whenever

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
