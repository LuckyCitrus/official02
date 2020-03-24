require 'test_helper'

class PaymentstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymentstatus = paymentstatuses(:one)
  end

  test "should get index" do
    get paymentstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_paymentstatus_url
    assert_response :success
  end

  test "should create paymentstatus" do
    assert_difference('Paymentstatus.count') do
      post paymentstatuses_url, params: { paymentstatus: { paymentstatus: @paymentstatus.paymentstatus } }
    end

    assert_redirected_to paymentstatus_url(Paymentstatus.last)
  end

  test "should show paymentstatus" do
    get paymentstatus_url(@paymentstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_paymentstatus_url(@paymentstatus)
    assert_response :success
  end

  test "should update paymentstatus" do
    patch paymentstatus_url(@paymentstatus), params: { paymentstatus: { paymentstatus: @paymentstatus.paymentstatus } }
    assert_redirected_to paymentstatus_url(@paymentstatus)
  end

  test "should destroy paymentstatus" do
    assert_difference('Paymentstatus.count', -1) do
      delete paymentstatus_url(@paymentstatus)
    end

    assert_redirected_to paymentstatuses_url
  end
end
