require 'test_helper'

class MemberHonorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_honor = member_honors(:one)
  end

  test "should get index" do
    get member_honors_url
    assert_response :success
  end

  test "should get new" do
    get new_member_honor_url
    assert_response :success
  end

  test "should create member_honor" do
    assert_difference('MemberHonor.count') do
      post member_honors_url, params: { member_honor: {  } }
    end

    assert_redirected_to member_honor_url(MemberHonor.last)
  end

  test "should show member_honor" do
    get member_honor_url(@member_honor)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_honor_url(@member_honor)
    assert_response :success
  end

  test "should update member_honor" do
    patch member_honor_url(@member_honor), params: { member_honor: {  } }
    assert_redirected_to member_honor_url(@member_honor)
  end

  test "should destroy member_honor" do
    assert_difference('MemberHonor.count', -1) do
      delete member_honor_url(@member_honor)
    end

    assert_redirected_to member_honors_url
  end
end
