require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Add this to your config/application.rb file:
    config.action_mailer.delivery_method = :postmark
    config.action_mailer.postmark_settings = { :api_token => "b58936f4-f4bd-43aa-bdba-205847e5cfec" }
  end
end
