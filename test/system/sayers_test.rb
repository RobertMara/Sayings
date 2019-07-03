require "application_system_test_case"

class SayersTest < ApplicationSystemTestCase
  setup do
    @sayer = sayers(:one)
  end

  test "visiting the index" do
    visit sayers_url
    assert_selector "h1", text: "Sayers"
  end

  test "creating a Sayer" do
    visit sayers_url
    click_on "New Sayer"

    fill_in "Name", with: @sayer.name
    click_on "Create Sayer"

    assert_text "Sayer was successfully created"
    click_on "Back"
  end

  test "updating a Sayer" do
    visit sayers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @sayer.name
    click_on "Update Sayer"

    assert_text "Sayer was successfully updated"
    click_on "Back"
  end

  test "destroying a Sayer" do
    visit sayers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sayer was successfully destroyed"
  end
end
