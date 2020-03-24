require 'test_helper'

class OrderinvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orderinvoice = orderinvoices(:one)
  end

  test "should get index" do
    get orderinvoices_url
    assert_response :success
  end

  test "should get new" do
    get new_orderinvoice_url
    assert_response :success
  end

  test "should create orderinvoice" do
    assert_difference('Orderinvoice.count') do
      post orderinvoices_url, params: { orderinvoice: { invoice_id: @orderinvoice.invoice_id, order_id: @orderinvoice.order_id } }
    end

    assert_redirected_to orderinvoice_url(Orderinvoice.last)
  end

  test "should show orderinvoice" do
    get orderinvoice_url(@orderinvoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_orderinvoice_url(@orderinvoice)
    assert_response :success
  end

  test "should update orderinvoice" do
    patch orderinvoice_url(@orderinvoice), params: { orderinvoice: { invoice_id: @orderinvoice.invoice_id, order_id: @orderinvoice.order_id } }
    assert_redirected_to orderinvoice_url(@orderinvoice)
  end

  test "should destroy orderinvoice" do
    assert_difference('Orderinvoice.count', -1) do
      delete orderinvoice_url(@orderinvoice)
    end

    assert_redirected_to orderinvoices_url
  end
end
