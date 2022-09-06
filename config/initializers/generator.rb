Rails.application.config.generators do |g|
  g.view_specs false
  g.test_framework :rspec,
                   controller_specs: false
end