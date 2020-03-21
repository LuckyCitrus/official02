require 'test_helper'

class InvoiceshipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoiceshipment = invoiceshipments(:one)
  end

  test "should get index" do
    get invoiceshipments_url
    assert_response :success
  end

  test "should get new" do
    get new_invoiceshipment_url
    assert_response :success
  end

  test "should create invoiceshipment" do
    assert_difference('Invoiceshipment.count') do
      post invoiceshipments_url, params: { invoiceshipment: { invoice_id: @invoiceshipment.invoice_id, shipment_id: @invoiceshipment.shipment_id } }
    end

    assert_redirected_to invoiceshipment_url(Invoiceshipment.last)
  end

  test "should show invoiceshipment" do
    get invoiceshipment_url(@invoiceshipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoiceshipment_url(@invoiceshipment)
    assert_response :success
  end

  test "should update invoiceshipment" do
    patch invoiceshipment_url(@invoiceshipment), params: { invoiceshipment: { invoice_id: @invoiceshipment.invoice_id, shipment_id: @invoiceshipment.shipment_id } }
    assert_redirected_to invoiceshipment_url(@invoiceshipment)
  end

  test "should destroy invoiceshipment" do
    assert_difference('Invoiceshipment.count', -1) do
      delete invoiceshipment_url(@invoiceshipment)
    end

    assert_redirected_to invoiceshipments_url
  end
end
