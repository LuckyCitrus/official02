require 'test_helper'

class ShipmentmethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipmentmethod = shipmentmethods(:one)
  end

  test "should get index" do
    get shipmentmethods_url
    assert_response :success
  end

  test "should get new" do
    get new_shipmentmethod_url
    assert_response :success
  end

  test "should create shipmentmethod" do
    assert_difference('Shipmentmethod.count') do
      post shipmentmethods_url, params: { shipmentmethod: { shipmentmethod: @shipmentmethod.shipmentmethod } }
    end

    assert_redirected_to shipmentmethod_url(Shipmentmethod.last)
  end

  test "should show shipmentmethod" do
    get shipmentmethod_url(@shipmentmethod)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipmentmethod_url(@shipmentmethod)
    assert_response :success
  end

  test "should update shipmentmethod" do
    patch shipmentmethod_url(@shipmentmethod), params: { shipmentmethod: { shipmentmethod: @shipmentmethod.shipmentmethod } }
    assert_redirected_to shipmentmethod_url(@shipmentmethod)
  end

  test "should destroy shipmentmethod" do
    assert_difference('Shipmentmethod.count', -1) do
      delete shipmentmethod_url(@shipmentmethod)
    end

    assert_redirected_to shipmentmethods_url
  end
end
