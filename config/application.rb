require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HackathonsApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    
  # Mail
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
      address:              ENV["EMAIL_SMTP_HOST"],
      port:                 ENV["EMAIL_SMTP_PORT"],
      domain:               ENV["EMAIL_DOMAIN"],
      user_name:            ENV["EMAIL_USERNAME"],
      password:             ENV["EMAIL_PASSWORD"],
      authentication:       'plain',
      enable_starttls_auto: true
  }

  end
end
