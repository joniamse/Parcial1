require 'test_helper'

class ClubDirectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @club_director = club_directors(:one)
  end

  test "should get index" do
    get club_directors_url
    assert_response :success
  end

  test "should get new" do
    get new_club_director_url
    assert_response :success
  end

  test "should create club_director" do
    assert_difference('ClubDirector.count') do
      post club_directors_url, params: { club_director: {  } }
    end

    assert_redirected_to club_director_url(ClubDirector.last)
  end

  test "should show club_director" do
    get club_director_url(@club_director)
    assert_response :success
  end

  test "should get edit" do
    get edit_club_director_url(@club_director)
    assert_response :success
  end

  test "should update club_director" do
    patch club_director_url(@club_director), params: { club_director: {  } }
    assert_redirected_to club_director_url(@club_director)
  end

  test "should destroy club_director" do
    assert_difference('ClubDirector.count', -1) do
      delete club_director_url(@club_director)
    end

    assert_redirected_to club_directors_url
  end
end
