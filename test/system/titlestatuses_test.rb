require "application_system_test_case"

class TitlestatusesTest < ApplicationSystemTestCase
  setup do
    @titlestatus = titlestatuses(:one)
  end

  test "visiting the index" do
    visit titlestatuses_url
    assert_selector "h1", text: "Titlestatuses"
  end

  test "creating a Titlestatus" do
    visit titlestatuses_url
    click_on "New Titlestatus"

    fill_in "Titlestatus", with: @titlestatus.titlestatus
    click_on "Create Titlestatus"

    assert_text "Titlestatus was successfully created"
    click_on "Back"
  end

  test "updating a Titlestatus" do
    visit titlestatuses_url
    click_on "Edit", match: :first

    fill_in "Titlestatus", with: @titlestatus.titlestatus
    click_on "Update Titlestatus"

    assert_text "Titlestatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Titlestatus" do
    visit titlestatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Titlestatus was successfully destroyed"
  end
end
