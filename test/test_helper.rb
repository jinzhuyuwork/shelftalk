require "simplecov"
SimpleCov.start "rails" do
  add_filter %w[
    app/views
    app/mailers
    lib/rails
    lib/templates
    bin
    coverage
    log
    test
    vendor
    node_modules
    db
    doc
    public
    storage
    tmp
  ]
end

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end

  class ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
  end

  class ActionController::TestCase
    include Devise::Test::ControllerHelpers
  end
end
