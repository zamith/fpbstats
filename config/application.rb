require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module Fpbstats
  class Application < Rails::Application
    config.i18n.enforce_available_locales = true

    config.active_record.default_timezone = :utc

    config.generators do |generate|
      generate.helper false
      generate.javascript_engine false
      generate.request_specs false
      generate.routing_specs false
      generate.stylesheets false
      generate.test_framework :rspec
      generate.view_specs false
    end

    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
  end
end
