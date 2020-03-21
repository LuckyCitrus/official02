require 'test_helper'

class ContainerordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @containerorder = containerorders(:one)
  end

  test "should get index" do
    get containerorders_url
    assert_response :success
  end

  test "should get new" do
    get new_containerorder_url
    assert_response :success
  end

  test "should create containerorder" do
    assert_difference('Containerorder.count') do
      post containerorders_url, params: { containerorder: { container_id: @containerorder.container_id, order_id: @containerorder.order_id } }
    end

    assert_redirected_to containerorder_url(Containerorder.last)
  end

  test "should show containerorder" do
    get containerorder_url(@containerorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_containerorder_url(@containerorder)
    assert_response :success
  end

  test "should update containerorder" do
    patch containerorder_url(@containerorder), params: { containerorder: { container_id: @containerorder.container_id, order_id: @containerorder.order_id } }
    assert_redirected_to containerorder_url(@containerorder)
  end

  test "should destroy containerorder" do
    assert_difference('Containerorder.count', -1) do
      delete containerorder_url(@containerorder)
    end

    assert_redirected_to containerorders_url
  end
end
