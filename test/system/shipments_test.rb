require "application_system_test_case"

class ShipmentsTest < ApplicationSystemTestCase
  setup do
    @shipment = shipments(:one)
  end

  test "visiting the index" do
    visit shipments_url
    assert_selector "h1", text: "Shipments"
  end

  test "creating a Shipment" do
    visit shipments_url
    click_on "New Shipment"

    fill_in "Container", with: @shipment.container
    fill_in "Date", with: @shipment.date
    fill_in "Quantity", with: @shipment.quantity
    fill_in "Shipmentmethod", with: @shipment.shipmentmethod_id
    fill_in "Shipmentstatus", with: @shipment.shipmentstatus_id
    fill_in "Warehouse", with: @shipment.warehouse_id
    click_on "Create Shipment"

    assert_text "Shipment was successfully created"
    click_on "Back"
  end

  test "updating a Shipment" do
    visit shipments_url
    click_on "Edit", match: :first

    fill_in "Container", with: @shipment.container
    fill_in "Date", with: @shipment.date
    fill_in "Quantity", with: @shipment.quantity
    fill_in "Shipmentmethod", with: @shipment.shipmentmethod_id
    fill_in "Shipmentstatus", with: @shipment.shipmentstatus_id
    fill_in "Warehouse", with: @shipment.warehouse_id
    click_on "Update Shipment"

    assert_text "Shipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipment" do
    visit shipments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipment was successfully destroyed"
  end
end
