require 'test_helper'

class FamilyMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_member = family_members(:one)
  end

  test "should show family_member" do
    get family_member_url(@family_member)
    assert_response :success
  end
end
