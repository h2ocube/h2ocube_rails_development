%w(pry-rails pry-remote better_errors binding_of_caller meta_request).each{ |gem| require gem }


module H2ocubeRailsDevelopment
  module Rails
    class Rails::Engine < ::Rails::Engine
      initializer 'h2ocube_rails_development.require_dependency' do |app|

      end
    end
  end
end
