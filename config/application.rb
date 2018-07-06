require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Todolist
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
config.assets.js_compressor = :uglifier
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.assets.enabled = true
    
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.assets.paths << Rails.root.join('app', 'assets', 'javascripts', 'vendor')
config.assets.paths << Rails.root.join('app', 'assets', 'javascripts', 'vendor', 'skins')
config.assets.paths << Rails.root.join('app', 'assets', 'javascripts', 'vendor', 'skins', 'square')

	
  end
end
