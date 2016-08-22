Dummy::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  if Gem::Version.new(Rails.version) >= Gem::Version.new("5.0.0")
    config.public_file_server.enabled = true
  elsif Gem::Version.new(Rails.version) >= Gem::Version.new("4.2.0")
    config.serve_static_files = true
  else
    # Configure static asset server for tests with Cache-Control for performance
    config.serve_static_assets = true
  end

  if Gem::Version.new(Rails.version) >= Gem::Version.new("5.0.0")
    config.public_file_server.headers = { 'Cache-Control' => 'public, max-age=3600' }
  else
    config.static_cache_control = "public, max-age=3600"
  end

  # Log error messages when you accidentally call methods on nil
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment
  config.action_controller.allow_forgery_protection    = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.delivery_method = :test

  # Raise exception on mass assignment protection for Active Record models
  # config.active_record.mass_assignment_sanitizer = :strict

  # Print deprecation notices to the stderr
  config.active_support.deprecation = :stderr

  config.eager_load = false
end
