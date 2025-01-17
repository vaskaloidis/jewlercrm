Rails.application.configure do
  # config.log_level = :debug
  Bullet.enable = false
  Bullet.alert = false
  Bullet.bullet_logger = false
  Bullet.console = false
  Bullet.rails_logger = false
  Bullet.add_footer = false
  # Bullet.stacktrace_includes = [ 'jeweler-utils', 'your_middleware' ]
  # Bullet.stacktrace_excludes = [ 'their_gem', 'their_middleware' ]

  # Assets
  # config.less.paths << "#{Rails.root}/app/assets/stylesheets"
  # config.assets.compile = true
  # config.assets.compress = false
  # config.assets.digest = false
  # config.assets.debug = false
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :yui
  # config.assets.css_compressor = :sass
  # config.less.paths << "#{Rails.root}/app/assets/css/less"

  # Settings specified here will take precedence over those in config/application.rb.

  config.action_mailer.default_url_options = { host: 'localhost', port: 3001 }
  JewlerCRM::Application.routes.default_url_options[:host] = 'localhost:3001'

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options)
  # config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  # config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
