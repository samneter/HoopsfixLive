require "application_system_test_case"

class MembershipsTest < ApplicationSystemTestCase
  setup do
    @membership = memberships(:one)
  end

  test "visiting the index" do
    visit memberships_url
    assert_selector "h1", text: "Memberships"
  end

  test "creating a Membership" do
    visit memberships_url
    click_on "New Membership"

    fill_in "Club", with: @membership.club
    fill_in "Competition", with: @membership.competition
    click_on "Create Membership"

    assert_text "Membership was successfully created"
    click_on "Back"
  end

  test "updating a Membership" do
    visit memberships_url
    click_on "Edit", match: :first

    fill_in "Club", with: @membership.club
    fill_in "Competition", with: @membership.competition
    click_on "Update Membership"

    assert_text "Membership was successfully updated"
    click_on "Back"
  end

  test "destroying a Membership" do
    visit memberships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Membership was successfully destroyed"
  end
end
