require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "creating a Invoice" do
    visit invoices_url
    click_on "New Invoice"

    fill_in "Auction", with: @invoice.auction_id
    fill_in "Car", with: @invoice.car_id
    fill_in "Customer", with: @invoice.customer_id
    fill_in "Duedate", with: @invoice.duedate
    fill_in "Employee", with: @invoice.employee_id
    fill_in "Invoicedate", with: @invoice.invoicedate
    fill_in "Order", with: @invoice.order_id
    fill_in "Payment", with: @invoice.payment_id
    fill_in "Shipment", with: @invoice.shipment_id
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "updating a Invoice" do
    visit invoices_url
    click_on "Edit", match: :first

    fill_in "Auction", with: @invoice.auction_id
    fill_in "Car", with: @invoice.car_id
    fill_in "Customer", with: @invoice.customer_id
    fill_in "Duedate", with: @invoice.duedate
    fill_in "Employee", with: @invoice.employee_id
    fill_in "Invoicedate", with: @invoice.invoicedate
    fill_in "Order", with: @invoice.order_id
    fill_in "Payment", with: @invoice.payment_id
    fill_in "Shipment", with: @invoice.shipment_id
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice" do
    visit invoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice was successfully destroyed"
  end
end
