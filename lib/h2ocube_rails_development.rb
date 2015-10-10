%w(exception_notification h2ocube_rails_cache).each { |gem| require gem }

%w(factory_girl_rails rspec-rails pry-rails).each { |gem| require gem } if Rails.env.development? || Rails.env.test?

if Rails.env.development?
  %w(annotate better_errors binding_of_caller meta_request pry-remote).each { |gem| require gem }
  BetterErrors::Middleware.allow_ip! '0.0.0.0'
end

%w(capybara database_cleaner rack_session_access timecop webmock).each { |gem| require gem } if Rails.env.test?

module H2ocubeRailsDevelopment
  class Railtie < Rails::Railtie
    railtie_name :h2ocube_rails_development

    initializer 'h2ocube_rails_development.configure_rails_initialization' do |app|
      app.middleware.use RackSessionAccess::Middleware if Rails.env.test?
    end

    rake_tasks do
      require 'rails_stats'
      desc 'annotate all your models, tests, fixtures, factories and routes'
      task :annotate do
        system 'bundle exec annotate -i'
      end

      desc 'remove all annotated comments'
      task 'annotate:remove' do
        system 'bundle exec annotate -d;bundle exec annotate -r -d'
      end

      desc 'run rubocop'
      task :rubocop do
        system 'bundle exec rubocop -R'
      end

      desc 'run spec and rubocop'
      task test: %i(spec rubocop)

      desc 'Sort config/locales/*.yml by key'
      task :sort do
        def deeply_sort_hash(object)
          return object unless object.is_a?(Hash)
          hash = Hash.new
          object.each { |k, v| hash[k] = deeply_sort_hash(v) }
          sorted = hash.sort { |a, b| a[0].to_s <=> b[0].to_s }
          hash.class[sorted]
        end

        Dir[Rails.root.join('config/locales/*.yml')].each do |f|
          STDOUT.print(f)
          hash = deeply_sort_hash(YAML.load(File.read(f)))
          File.open(f, 'w') { |file| file.write hash.to_yaml }
          STDOUT.print("...done!\n")
        end
      end
    end
  end
end if Rails.env.development? || Rails.env.test?
