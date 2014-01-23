BdProject::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  ENV['SECRET_TOKEN'] = 'fa5a06c9c319ebf7d9b88a69b961fb7695b02e481c07fdec00930c1ff70df54e10a41acbc674df4463c4975d9cc604e2584627ae115bb82a7f6d85204b97bca0'
  ENV['SECRET_KEY_BASE'] = '3ca71e427e9dcd6e8372085b83f322f823047b13973577fcf0c40a2f3b9bbdf68b1db0a98773d4e2b551e555f6333ab785298f60c0301a9298ab3a237977aec8'
end
