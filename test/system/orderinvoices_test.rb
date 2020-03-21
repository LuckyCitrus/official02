require "application_system_test_case"

class OrderinvoicesTest < ApplicationSystemTestCase
  setup do
    @orderinvoice = orderinvoices(:one)
  end

  test "visiting the index" do
    visit orderinvoices_url
    assert_selector "h1", text: "Orderinvoices"
  end

  test "creating a Orderinvoice" do
    visit orderinvoices_url
    click_on "New Orderinvoice"

    fill_in "Invoice", with: @orderinvoice.invoice_id
    fill_in "Order", with: @orderinvoice.order_id
    click_on "Create Orderinvoice"

    assert_text "Orderinvoice was successfully created"
    click_on "Back"
  end

  test "updating a Orderinvoice" do
    visit orderinvoices_url
    click_on "Edit", match: :first

    fill_in "Invoice", with: @orderinvoice.invoice_id
    fill_in "Order", with: @orderinvoice.order_id
    click_on "Update Orderinvoice"

    assert_text "Orderinvoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Orderinvoice" do
    visit orderinvoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Orderinvoice was successfully destroyed"
  end
end
