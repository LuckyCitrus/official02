require 'test_helper'

class DummyrolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dummyrole = dummyroles(:one)
  end

  test "should get index" do
    get dummyroles_url
    assert_response :success
  end

  test "should get new" do
    get new_dummyrole_url
    assert_response :success
  end

  test "should create dummyrole" do
    assert_difference('Dummyrole.count') do
      post dummyroles_url, params: { dummyrole: { role: @dummyrole.role } }
    end

    assert_redirected_to dummyrole_url(Dummyrole.last)
  end

  test "should show dummyrole" do
    get dummyrole_url(@dummyrole)
    assert_response :success
  end

  test "should get edit" do
    get edit_dummyrole_url(@dummyrole)
    assert_response :success
  end

  test "should update dummyrole" do
    patch dummyrole_url(@dummyrole), params: { dummyrole: { role: @dummyrole.role } }
    assert_redirected_to dummyrole_url(@dummyrole)
  end

  test "should destroy dummyrole" do
    assert_difference('Dummyrole.count', -1) do
      delete dummyrole_url(@dummyrole)
    end

    assert_redirected_to dummyroles_url
  end
end
