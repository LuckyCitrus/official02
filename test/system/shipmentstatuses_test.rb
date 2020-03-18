require "application_system_test_case"

class ShipmentstatusesTest < ApplicationSystemTestCase
  setup do
    @shipmentstatus = shipmentstatuses(:one)
  end

  test "visiting the index" do
    visit shipmentstatuses_url
    assert_selector "h1", text: "Shipmentstatuses"
  end

  test "creating a Shipmentstatus" do
    visit shipmentstatuses_url
    click_on "New Shipmentstatus"

    fill_in "Shipmentstatus", with: @shipmentstatus.shipmentstatus
    click_on "Create Shipmentstatus"

    assert_text "Shipmentstatus was successfully created"
    click_on "Back"
  end

  test "updating a Shipmentstatus" do
    visit shipmentstatuses_url
    click_on "Edit", match: :first

    fill_in "Shipmentstatus", with: @shipmentstatus.shipmentstatus
    click_on "Update Shipmentstatus"

    assert_text "Shipmentstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipmentstatus" do
    visit shipmentstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipmentstatus was successfully destroyed"
  end
end
