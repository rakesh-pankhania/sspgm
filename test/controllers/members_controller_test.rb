require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index for logged in user" do
    user = users(:one)
    @member.update!(user_id: user.id)
    sign_in user

    get members_url
    assert_response :success
  end

  test "should redirect index if user not logged in" do
    get members_url
    assert_redirected_to new_user_session_path
  end

  test "should get edit for logged in member editing own" do
    user = users(:one)
    @member.update!(user_id: user.id)
    sign_in user

    get edit_member_url(@member)
    assert_response :success
  end

  test "should redirect edit if member tries editing other member" do
    sign_in users(:one)

    get edit_member_url(@member)
    assert_redirected_to members_url
  end

  test "should update member for logged in member updating own" do
    user = users(:one)
    @member.update!(user_id: user.id)
    sign_in user

    patch member_url(@member), params: { member: { first_name: "Rakesh" } }
    assert_redirected_to members_url
    @member.reload
    assert_equal "Rakesh", @member.first_name
  end

  test "should redirect update if member tries updating other member" do
    sign_in users(:one)

    patch member_url(@member), params: { member: { first_name: "Rakesh" } }

    assert_redirected_to members_url
    @member.reload
    assert_equal "John", @member.first_name
  end
end
