require "application_system_test_case"

class LiveStatsTest < ApplicationSystemTestCase
  setup do
    @live_stat = live_stats(:one)
  end

  test "visiting the index" do
    visit live_stats_url
    assert_selector "h1", text: "Live Stats"
  end

  test "creating a Live stat" do
    visit live_stats_url
    click_on "New Live Stat"

    fill_in "Url", with: @live_stat.url
    click_on "Create Live stat"

    assert_text "Live stat was successfully created"
    click_on "Back"
  end

  test "updating a Live stat" do
    visit live_stats_url
    click_on "Edit", match: :first

    fill_in "Url", with: @live_stat.url
    click_on "Update Live stat"

    assert_text "Live stat was successfully updated"
    click_on "Back"
  end

  test "destroying a Live stat" do
    visit live_stats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Live stat was successfully destroyed"
  end
end
