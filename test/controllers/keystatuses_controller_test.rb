require 'test_helper'

class KeystatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keystatus = keystatuses(:one)
  end

  test "should get index" do
    get keystatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_keystatus_url
    assert_response :success
  end

  test "should create keystatus" do
    assert_difference('Keystatus.count') do
      post keystatuses_url, params: { keystatus: { keystatus: @keystatus.keystatus } }
    end

    assert_redirected_to keystatus_url(Keystatus.last)
  end

  test "should show keystatus" do
    get keystatus_url(@keystatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_keystatus_url(@keystatus)
    assert_response :success
  end

  test "should update keystatus" do
    patch keystatus_url(@keystatus), params: { keystatus: { keystatus: @keystatus.keystatus } }
    assert_redirected_to keystatus_url(@keystatus)
  end

  test "should destroy keystatus" do
    assert_difference('Keystatus.count', -1) do
      delete keystatus_url(@keystatus)
    end

    assert_redirected_to keystatuses_url
  end
end
