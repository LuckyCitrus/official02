require "application_system_test_case"

class DummyrolesTest < ApplicationSystemTestCase
  setup do
    @dummyrole = dummyroles(:one)
  end

  test "visiting the index" do
    visit dummyroles_url
    assert_selector "h1", text: "Dummyroles"
  end

  test "creating a Dummyrole" do
    visit dummyroles_url
    click_on "New Dummyrole"

    fill_in "Role", with: @dummyrole.role
    click_on "Create Dummyrole"

    assert_text "Dummyrole was successfully created"
    click_on "Back"
  end

  test "updating a Dummyrole" do
    visit dummyroles_url
    click_on "Edit", match: :first

    fill_in "Role", with: @dummyrole.role
    click_on "Update Dummyrole"

    assert_text "Dummyrole was successfully updated"
    click_on "Back"
  end

  test "destroying a Dummyrole" do
    visit dummyroles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dummyrole was successfully destroyed"
  end
end
