require "application_system_test_case"

class InvoicestatusesTest < ApplicationSystemTestCase
  setup do
    @invoicestatus = invoicestatuses(:one)
  end

  test "visiting the index" do
    visit invoicestatuses_url
    assert_selector "h1", text: "Invoicestatuses"
  end

  test "creating a Invoicestatus" do
    visit invoicestatuses_url
    click_on "New Invoicestatus"

    fill_in "Invoicestatus", with: @invoicestatus.invoicestatus
    click_on "Create Invoicestatus"

    assert_text "Invoicestatus was successfully created"
    click_on "Back"
  end

  test "updating a Invoicestatus" do
    visit invoicestatuses_url
    click_on "Edit", match: :first

    fill_in "Invoicestatus", with: @invoicestatus.invoicestatus
    click_on "Update Invoicestatus"

    assert_text "Invoicestatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoicestatus" do
    visit invoicestatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoicestatus was successfully destroyed"
  end
end
