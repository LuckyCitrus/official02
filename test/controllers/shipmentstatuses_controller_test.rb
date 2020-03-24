require 'test_helper'

class ShipmentstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipmentstatus = shipmentstatuses(:one)
  end

  test "should get index" do
    get shipmentstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_shipmentstatus_url
    assert_response :success
  end

  test "should create shipmentstatus" do
    assert_difference('Shipmentstatus.count') do
      post shipmentstatuses_url, params: { shipmentstatus: { shipmentstatus: @shipmentstatus.shipmentstatus } }
    end

    assert_redirected_to shipmentstatus_url(Shipmentstatus.last)
  end

  test "should show shipmentstatus" do
    get shipmentstatus_url(@shipmentstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipmentstatus_url(@shipmentstatus)
    assert_response :success
  end

  test "should update shipmentstatus" do
    patch shipmentstatus_url(@shipmentstatus), params: { shipmentstatus: { shipmentstatus: @shipmentstatus.shipmentstatus } }
    assert_redirected_to shipmentstatus_url(@shipmentstatus)
  end

  test "should destroy shipmentstatus" do
    assert_difference('Shipmentstatus.count', -1) do
      delete shipmentstatus_url(@shipmentstatus)
    end

    assert_redirected_to shipmentstatuses_url
  end
end
