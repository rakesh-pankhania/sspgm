require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "mocha/minitest"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def sign_in(person)
    ApplicationController.any_instance.stubs(:authenticate_user!).returns(true)
    ApplicationController.any_instance.stubs(:user_signed_in?).returns(true)
    ApplicationController.any_instance.stubs(:current_user).returns(person)
  end

  def sign_out(person)
    ApplicationController.any_instance.stubs(:authenticate_user!).returns(false)
    ApplicationController.any_instance.stubs(:user_signed_in?).returns(false)
    ApplicationController.any_instance.stubs(:current_user).returns(nil)
  end
end
