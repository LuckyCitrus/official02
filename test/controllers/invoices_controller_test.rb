require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { auction_id: @invoice.auction_id, car_id: @invoice.car_id, customer_id: @invoice.customer_id, duedate: @invoice.duedate, employee_id: @invoice.employee_id, invoicedate: @invoice.invoicedate, order_id: @invoice.order_id, payment_id: @invoice.payment_id, shipment_id: @invoice.shipment_id } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { auction_id: @invoice.auction_id, car_id: @invoice.car_id, customer_id: @invoice.customer_id, duedate: @invoice.duedate, employee_id: @invoice.employee_id, invoicedate: @invoice.invoicedate, order_id: @invoice.order_id, payment_id: @invoice.payment_id, shipment_id: @invoice.shipment_id } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
