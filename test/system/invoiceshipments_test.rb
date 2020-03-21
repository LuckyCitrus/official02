require "application_system_test_case"

class InvoiceshipmentsTest < ApplicationSystemTestCase
  setup do
    @invoiceshipment = invoiceshipments(:one)
  end

  test "visiting the index" do
    visit invoiceshipments_url
    assert_selector "h1", text: "Invoiceshipments"
  end

  test "creating a Invoiceshipment" do
    visit invoiceshipments_url
    click_on "New Invoiceshipment"

    fill_in "Invoice", with: @invoiceshipment.invoice_id
    fill_in "Shipment", with: @invoiceshipment.shipment_id
    click_on "Create Invoiceshipment"

    assert_text "Invoiceshipment was successfully created"
    click_on "Back"
  end

  test "updating a Invoiceshipment" do
    visit invoiceshipments_url
    click_on "Edit", match: :first

    fill_in "Invoice", with: @invoiceshipment.invoice_id
    fill_in "Shipment", with: @invoiceshipment.shipment_id
    click_on "Update Invoiceshipment"

    assert_text "Invoiceshipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoiceshipment" do
    visit invoiceshipments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoiceshipment was successfully destroyed"
  end
end
