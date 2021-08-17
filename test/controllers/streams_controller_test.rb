require "test_helper"

class StreamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stream = streams(:one)
  end

  test "should get index" do
    get streams_url
    assert_response :success
  end

  test "should get new" do
    get new_stream_url
    assert_response :success
  end

  test "should create stream" do
    assert_difference('Stream.count') do
      post streams_url, params: { stream: { away_team: @stream.away_team, competition: @stream.competition, date: @stream.date, home_team: @stream.home_team, live_stats_link: @stream.live_stats_link, stream_link: @stream.stream_link, tip_time: @stream.tip_time } }
    end

    assert_redirected_to stream_url(Stream.last)
  end

  test "should show stream" do
    get stream_url(@stream)
    assert_response :success
  end

  test "should get edit" do
    get edit_stream_url(@stream)
    assert_response :success
  end

  test "should update stream" do
    patch stream_url(@stream), params: { stream: { away_team: @stream.away_team, competition: @stream.competition, date: @stream.date, home_team: @stream.home_team, live_stats_link: @stream.live_stats_link, stream_link: @stream.stream_link, tip_time: @stream.tip_time } }
    assert_redirected_to stream_url(@stream)
  end

  test "should destroy stream" do
    assert_difference('Stream.count', -1) do
      delete stream_url(@stream)
    end

    assert_redirected_to streams_url
  end
end
