require 'test_helper'

class CustomerstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customerstatus = customerstatuses(:one)
  end

  test "should get index" do
    get customerstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_customerstatus_url
    assert_response :success
  end

  test "should create customerstatus" do
    assert_difference('Customerstatus.count') do
      post customerstatuses_url, params: { customerstatus: { customerstatus: @customerstatus.customerstatus } }
    end

    assert_redirected_to customerstatus_url(Customerstatus.last)
  end

  test "should show customerstatus" do
    get customerstatus_url(@customerstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_customerstatus_url(@customerstatus)
    assert_response :success
  end

  test "should update customerstatus" do
    patch customerstatus_url(@customerstatus), params: { customerstatus: { customerstatus: @customerstatus.customerstatus } }
    assert_redirected_to customerstatus_url(@customerstatus)
  end

  test "should destroy customerstatus" do
    assert_difference('Customerstatus.count', -1) do
      delete customerstatus_url(@customerstatus)
    end

    assert_redirected_to customerstatuses_url
  end
end
