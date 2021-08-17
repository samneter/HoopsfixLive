require "application_system_test_case"

class StreamsTest < ApplicationSystemTestCase
  setup do
    @stream = streams(:one)
  end

  test "visiting the index" do
    visit streams_url
    assert_selector "h1", text: "Streams"
  end

  test "creating a Stream" do
    visit streams_url
    click_on "New Stream"

    fill_in "Away team", with: @stream.away_team
    fill_in "Competition", with: @stream.competition
    fill_in "Date", with: @stream.date
    fill_in "Home team", with: @stream.home_team
    fill_in "Live stats link", with: @stream.live_stats_link
    fill_in "Stream link", with: @stream.stream_link
    fill_in "Tip time", with: @stream.tip_time
    click_on "Create Stream"

    assert_text "Stream was successfully created"
    click_on "Back"
  end

  test "updating a Stream" do
    visit streams_url
    click_on "Edit", match: :first

    fill_in "Away team", with: @stream.away_team
    fill_in "Competition", with: @stream.competition
    fill_in "Date", with: @stream.date
    fill_in "Home team", with: @stream.home_team
    fill_in "Live stats link", with: @stream.live_stats_link
    fill_in "Stream link", with: @stream.stream_link
    fill_in "Tip time", with: @stream.tip_time
    click_on "Update Stream"

    assert_text "Stream was successfully updated"
    click_on "Back"
  end

  test "destroying a Stream" do
    visit streams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stream was successfully destroyed"
  end
end
