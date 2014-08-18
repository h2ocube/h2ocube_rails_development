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

## Usage

    $ rake annotate         # => annotate all your models, tests, fixtures, factories and routes
    $ rake annotate:remove  # => remove all annotated comments
    $ rake spec             # => just default rspec task
    $ rake rubocop          # => rubocop -R
    $ rake test             # => run spec and rubocop
    $ rake sort             # => Sort config/locales/*.yml by key

more details see below

## Include

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

For test only

* capybara http://jnicklas.github.io/capybara
* database_cleaner https://github.com/bmabey/database_cleaner
* timecop https://github.com/travisjeffery/timecop

Just installed but not required

* capistrano https://github.com/capistrano/capistrano
* capistrano-bundler https://github.com/capistrano/bundler
* capistrano-rails https://github.com/capistrano/rails
* capistrano-rbenv https://github.com/capistrano/rbenv
* powder https://github.com/Rodreegez/powder
* rubocop https://github.com/bbatsov/rubocop
* vendorer https://github.com/grosser/vendorer

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
