require 'test_helper'

class ProfessionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional = professionals(:one)
  end

  test "should get index" do
    get professionals_url
    assert_response :success
  end

  test "should show professional" do
    get professional_url(@professional)
    assert_response :success
  end
end
