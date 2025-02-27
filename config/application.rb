require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AimmanagerR1App
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # Load dotenv only in development or test environment
    if ['development', 'test'].include? ENV['RAILS_ENV']
      Dotenv::Railtie.load
    end

    config.time_zone = "Santiago"
    # config.eager_load_paths << Rails.root.join("extras")

    config.i18n.default_locale = :es
  end
end
