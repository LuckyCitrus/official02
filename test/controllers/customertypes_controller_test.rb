require 'test_helper'

class CustomertypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customertype = customertypes(:one)
  end

  test "should get index" do
    get customertypes_url
    assert_response :success
  end

  test "should get new" do
    get new_customertype_url
    assert_response :success
  end

  test "should create customertype" do
    assert_difference('Customertype.count') do
      post customertypes_url, params: { customertype: { customertype: @customertype.customertype } }
    end

    assert_redirected_to customertype_url(Customertype.last)
  end

  test "should show customertype" do
    get customertype_url(@customertype)
    assert_response :success
  end

  test "should get edit" do
    get edit_customertype_url(@customertype)
    assert_response :success
  end

  test "should update customertype" do
    patch customertype_url(@customertype), params: { customertype: { customertype: @customertype.customertype } }
    assert_redirected_to customertype_url(@customertype)
  end

  test "should destroy customertype" do
    assert_difference('Customertype.count', -1) do
      delete customertype_url(@customertype)
    end

    assert_redirected_to customertypes_url
  end
end
