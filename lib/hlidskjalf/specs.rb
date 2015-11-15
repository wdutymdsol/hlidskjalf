require 'rails/railtie'

# Namespace for all core RSpec projects.
module RSpec
  # Namespace for rspec-rails code.
  module Rails
    # Railtie to hook into Rails.
    class Railtie < ::Rails::Railtie
      puts '--------> loading shared specs...'
      load File.join(File.dirname(__FILE__), '.', '', 'i18n_spec.rb')

    end
  end
end

