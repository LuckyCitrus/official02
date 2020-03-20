require "application_system_test_case"

class HelloosTest < ApplicationSystemTestCase
  setup do
    @helloo = helloos(:one)
  end

  test "visiting the index" do
    visit helloos_url
    assert_selector "h1", text: "Helloos"
  end

  test "creating a Helloo" do
    visit helloos_url
    click_on "New Helloo"

    fill_in "Worldd", with: @helloo.worldd
    click_on "Create Helloo"

    assert_text "Helloo was successfully created"
    click_on "Back"
  end

  test "updating a Helloo" do
    visit helloos_url
    click_on "Edit", match: :first

    fill_in "Worldd", with: @helloo.worldd
    click_on "Update Helloo"

    assert_text "Helloo was successfully updated"
    click_on "Back"
  end

  test "destroying a Helloo" do
    visit helloos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Helloo was successfully destroyed"
  end
end
