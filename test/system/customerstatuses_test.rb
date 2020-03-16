require "application_system_test_case"

class CustomerstatusesTest < ApplicationSystemTestCase
  setup do
    @customerstatus = customerstatuses(:one)
  end

  test "visiting the index" do
    visit customerstatuses_url
    assert_selector "h1", text: "Customerstatuses"
  end

  test "creating a Customerstatus" do
    visit customerstatuses_url
    click_on "New Customerstatus"

    fill_in "Customerstatus", with: @customerstatus.customerstatus
    click_on "Create Customerstatus"

    assert_text "Customerstatus was successfully created"
    click_on "Back"
  end

  test "updating a Customerstatus" do
    visit customerstatuses_url
    click_on "Edit", match: :first

    fill_in "Customerstatus", with: @customerstatus.customerstatus
    click_on "Update Customerstatus"

    assert_text "Customerstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Customerstatus" do
    visit customerstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customerstatus was successfully destroyed"
  end
end
