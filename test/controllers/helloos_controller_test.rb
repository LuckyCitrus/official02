require 'test_helper'

class HelloosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helloo = helloos(:one)
  end

  test "should get index" do
    get helloos_url
    assert_response :success
  end

  test "should get new" do
    get new_helloo_url
    assert_response :success
  end

  test "should create helloo" do
    assert_difference('Helloo.count') do
      post helloos_url, params: { helloo: { worldd: @helloo.worldd } }
    end

    assert_redirected_to helloo_url(Helloo.last)
  end

  test "should show helloo" do
    get helloo_url(@helloo)
    assert_response :success
  end

  test "should get edit" do
    get edit_helloo_url(@helloo)
    assert_response :success
  end

  test "should update helloo" do
    patch helloo_url(@helloo), params: { helloo: { worldd: @helloo.worldd } }
    assert_redirected_to helloo_url(@helloo)
  end

  test "should destroy helloo" do
    assert_difference('Helloo.count', -1) do
      delete helloo_url(@helloo)
    end

    assert_redirected_to helloos_url
  end
end
