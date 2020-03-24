require "application_system_test_case"

class PaymentstatusesTest < ApplicationSystemTestCase
  setup do
    @paymentstatus = paymentstatuses(:one)
  end

  test "visiting the index" do
    visit paymentstatuses_url
    assert_selector "h1", text: "Paymentstatuses"
  end

  test "creating a Paymentstatus" do
    visit paymentstatuses_url
    click_on "New Paymentstatus"

    fill_in "Paymentstatus", with: @paymentstatus.paymentstatus
    click_on "Create Paymentstatus"

    assert_text "Paymentstatus was successfully created"
    click_on "Back"
  end

  test "updating a Paymentstatus" do
    visit paymentstatuses_url
    click_on "Edit", match: :first

    fill_in "Paymentstatus", with: @paymentstatus.paymentstatus
    click_on "Update Paymentstatus"

    assert_text "Paymentstatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Paymentstatus" do
    visit paymentstatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paymentstatus was successfully destroyed"
  end
end
