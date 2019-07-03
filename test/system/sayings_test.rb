require "application_system_test_case"

class SayingsTest < ApplicationSystemTestCase
  setup do
    @saying = sayings(:one)
  end

  test "visiting the index" do
    visit sayings_url
    assert_selector "h1", text: "Sayings"
  end

  test "creating a Saying" do
    visit sayings_url
    click_on "New Saying"

    fill_in "Body", with: @saying.body
    fill_in "Sayer", with: @saying.sayer_id
    click_on "Create Saying"

    assert_text "Saying was successfully created"
    click_on "Back"
  end

  test "updating a Saying" do
    visit sayings_url
    click_on "Edit", match: :first

    fill_in "Body", with: @saying.body
    fill_in "Sayer", with: @saying.sayer_id
    click_on "Update Saying"

    assert_text "Saying was successfully updated"
    click_on "Back"
  end

  test "destroying a Saying" do
    visit sayings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Saying was successfully destroyed"
  end
end
