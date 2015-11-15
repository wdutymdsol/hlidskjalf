require 'rails/railtie'

# Namespace for all core RSpec projects.
module RSpec
  # Namespace for rspec-rails code.
  module Rails
    # Railtie to hook into Rails.
    class Railtie < ::Rails::Railtie
      puts 'Loading shared specs...'
      Dir[File.dirname(__FILE__) + '/specs/*.rb'].each { |file| load file }
    end
  end
end
