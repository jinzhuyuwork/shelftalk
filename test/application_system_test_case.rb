require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include Warden::Test::Helpers

  driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ]

  # Add this to make sure Warden resets after each test
  teardown do
    Warden.test_reset!
  end
end
