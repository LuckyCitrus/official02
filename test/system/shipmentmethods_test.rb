require "application_system_test_case"

class ShipmentmethodsTest < ApplicationSystemTestCase
  setup do
    @shipmentmethod = shipmentmethods(:one)
  end

  test "visiting the index" do
    visit shipmentmethods_url
    assert_selector "h1", text: "Shipmentmethods"
  end

  test "creating a Shipmentmethod" do
    visit shipmentmethods_url
    click_on "New Shipmentmethod"

    fill_in "Shipmentmethod", with: @shipmentmethod.shipmentmethod
    click_on "Create Shipmentmethod"

    assert_text "Shipmentmethod was successfully created"
    click_on "Back"
  end

  test "updating a Shipmentmethod" do
    visit shipmentmethods_url
    click_on "Edit", match: :first

    fill_in "Shipmentmethod", with: @shipmentmethod.shipmentmethod
    click_on "Update Shipmentmethod"

    assert_text "Shipmentmethod was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipmentmethod" do
    visit shipmentmethods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipmentmethod was successfully destroyed"
  end
end
