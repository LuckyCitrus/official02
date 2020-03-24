require "application_system_test_case"

class OrderstatusesTest < ApplicationSystemTestCase
  setup do
    @orderstatus = orderstatuses(:one)
  end

  test "visiting the index" do
    visit orderstatuses_url
    assert_selector "h1", text: "Orderstatuses"
  end

  test "creating a Orderstatus" do
    visit orderstatuses_url
    click_on "New Orderstatus"

    fill_in "Customertype", with: @orderstatus.customertype
    click_on "Create Orderstatus"

    assert_text "Orderstatus was successfully created"
    click_on "Back"
  end

  test "updating a Orderstatus" do
    visit orderstatuses_url
    click_on "Edit", match: :first

    fill_in "Customertype", with: @orderstatus.customertype
    click_on "Update Orderstatus"

    assert_text "Orderstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Orderstatus" do
    visit orderstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orderstatus was successfully destroyed"
  end
end
