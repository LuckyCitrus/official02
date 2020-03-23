require "application_system_test_case"

class CustomertypesTest < ApplicationSystemTestCase
  setup do
    @customertype = customertypes(:one)
  end

  test "visiting the index" do
    visit customertypes_url
    assert_selector "h1", text: "Customertypes"
  end

  test "creating a Customertype" do
    visit customertypes_url
    click_on "New Customertype"

    fill_in "Customertype", with: @customertype.customertype
    click_on "Create Customertype"

    assert_text "Customertype was successfully created"
    click_on "Back"
  end

  test "updating a Customertype" do
    visit customertypes_url
    click_on "Edit", match: :first

    fill_in "Customertype", with: @customertype.customertype
    click_on "Update Customertype"

    assert_text "Customertype was successfully updated"
    click_on "Back"
  end

  test "destroying a Customertype" do
    visit customertypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customertype was successfully destroyed"
  end
end
