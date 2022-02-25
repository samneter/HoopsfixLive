require "test_helper"

class ClubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @club = clubs(:one)
  end

  test "should get index" do
    get teams_url
    assert_response :success
  end

  test "should get new" do
    get new_team_url
    assert_response :success
  end

  test "should create club" do
    assert_difference('Team.count') do
      post teams_url, params: { club: { name: @club.name } }
    end

    assert_redirected_to team_url(Team.last)
  end

  test "should show club" do
    get team_url(@club)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_url(@club)
    assert_response :success
  end

  test "should update club" do
    patch team_url(@club), params: { club: { name: @club.name } }
    assert_redirected_to team_url(@club)
  end

  test "should destroy club" do
    assert_difference('Team.count', -1) do
      delete team_url(@club)
    end

    assert_redirected_to teams_url
  end
end
