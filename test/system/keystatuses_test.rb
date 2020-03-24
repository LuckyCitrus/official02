require "application_system_test_case"

class KeystatusesTest < ApplicationSystemTestCase
  setup do
    @keystatus = keystatuses(:one)
  end

  test "visiting the index" do
    visit keystatuses_url
    assert_selector "h1", text: "Keystatuses"
  end

  test "creating a Keystatus" do
    visit keystatuses_url
    click_on "New Keystatus"

    fill_in "Keystatus", with: @keystatus.keystatus
    click_on "Create Keystatus"

    assert_text "Keystatus was successfully created"
    click_on "Back"
  end

  test "updating a Keystatus" do
    visit keystatuses_url
    click_on "Edit", match: :first

    fill_in "Keystatus", with: @keystatus.keystatus
    click_on "Update Keystatus"

    assert_text "Keystatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Keystatus" do
    visit keystatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Keystatus was successfully destroyed"
  end
end
