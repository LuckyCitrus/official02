require 'test_helper'

class InvoicestatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoicestatus = invoicestatuses(:one)
  end

  test "should get index" do
    get invoicestatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_invoicestatus_url
    assert_response :success
  end

  test "should create invoicestatus" do
    assert_difference('Invoicestatus.count') do
      post invoicestatuses_url, params: { invoicestatus: { invoicestatus: @invoicestatus.invoicestatus } }
    end

    assert_redirected_to invoicestatus_url(Invoicestatus.last)
  end

  test "should show invoicestatus" do
    get invoicestatus_url(@invoicestatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoicestatus_url(@invoicestatus)
    assert_response :success
  end

  test "should update invoicestatus" do
    patch invoicestatus_url(@invoicestatus), params: { invoicestatus: { invoicestatus: @invoicestatus.invoicestatus } }
    assert_redirected_to invoicestatus_url(@invoicestatus)
  end

  test "should destroy invoicestatus" do
    assert_difference('Invoicestatus.count', -1) do
      delete invoicestatus_url(@invoicestatus)
    end

    assert_redirected_to invoicestatuses_url
  end
end
