require 'test_helper'

class OrderstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orderstatus = orderstatuses(:one)
  end

  test "should get index" do
    get orderstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_orderstatus_url
    assert_response :success
  end

  test "should create orderstatus" do
    assert_difference('Orderstatus.count') do
      post orderstatuses_url, params: { orderstatus: { customertype: @orderstatus.customertype } }
    end

    assert_redirected_to orderstatus_url(Orderstatus.last)
  end

  test "should show orderstatus" do
    get orderstatus_url(@orderstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_orderstatus_url(@orderstatus)
    assert_response :success
  end

  test "should update orderstatus" do
    patch orderstatus_url(@orderstatus), params: { orderstatus: { customertype: @orderstatus.customertype } }
    assert_redirected_to orderstatus_url(@orderstatus)
  end

  test "should destroy orderstatus" do
    assert_difference('Orderstatus.count', -1) do
      delete orderstatus_url(@orderstatus)
    end

    assert_redirected_to orderstatuses_url
  end
end
