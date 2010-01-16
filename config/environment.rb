# encoding: utf-8

if RUBY_VERSION < "1.9.1"
  abort "Don't forget that Rango requires at least Ruby 1.9.1!"
end

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Setup load path
require_relative "../gems/environment"
require_relative "boot"

# Load plugin from parent directory if it has proper name, so it can work locally or from a gem
if File.basename(File.expand_path(File.join(RAILS_ROOT, ".."))) == "rails-template-inheritance"
  $LOAD_PATH.unshift(File.join(RAILS_ROOT, "..", "lib"))
end

Bundler.require_env(Rails.env)

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  config.frameworks -= [:active_record, :active_resource, :action_mailer]

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'UTC'
end
