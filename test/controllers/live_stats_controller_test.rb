require "test_helper"

class LiveStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @live_stat = live_stats(:one)
  end

  test "should get index" do
    get live_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_live_stat_url
    assert_response :success
  end

  test "should create live_stat" do
    assert_difference('LiveStat.count') do
      post live_stats_url, params: { live_stat: { url: @live_stat.url } }
    end

    assert_redirected_to live_stat_url(LiveStat.last)
  end

  test "should show live_stat" do
    get live_stat_url(@live_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_live_stat_url(@live_stat)
    assert_response :success
  end

  test "should update live_stat" do
    patch live_stat_url(@live_stat), params: { live_stat: { url: @live_stat.url } }
    assert_redirected_to live_stat_url(@live_stat)
  end

  test "should destroy live_stat" do
    assert_difference('LiveStat.count', -1) do
      delete live_stat_url(@live_stat)
    end

    assert_redirected_to live_stats_url
  end
end
