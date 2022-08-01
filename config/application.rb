require_relative "boot"

require "rails"

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"

Bundler.require(*Rails.groups)

module RrmTest
  class Application < Rails::Application
    config.load_defaults 7.0
    config.time_zone = 'Moscow'
    config.location = 'Europe/Moscow'
    config.i18n.default_locale = :ru
    config.api_only = true
  end
end
