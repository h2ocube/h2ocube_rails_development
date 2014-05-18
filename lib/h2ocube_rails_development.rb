%w(pry-rails pry-remote better_errors binding_of_caller meta_request annotate).each{ |gem| require gem }

module H2ocubeRailsDevelopment
  class Railtie < Rails::Railtie
    railtie_name :h2ocube_rails_development

    rake_tasks do
      desc 'annotate all your models, tests, fixtures, factories and routes'
      task :annotate do
        system 'bundle exec annotate -i;bundle exec annotate -r'
      end

      desc 'remove all annotated comments'
      task 'annotate:remove' do
        system 'bundle exec annotate -d;bundle exec annotate -r -d'
      end
    end
  end
end
