require 'test_helper'

class TitlestatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @titlestatus = titlestatuses(:one)
  end

  test "should get index" do
    get titlestatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_titlestatus_url
    assert_response :success
  end

  test "should create titlestatus" do
    assert_difference('Titlestatus.count') do
      post titlestatuses_url, params: { titlestatus: { titlestatus: @titlestatus.titlestatus } }
    end

    assert_redirected_to titlestatus_url(Titlestatus.last)
  end

  test "should show titlestatus" do
    get titlestatus_url(@titlestatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_titlestatus_url(@titlestatus)
    assert_response :success
  end

  test "should update titlestatus" do
    patch titlestatus_url(@titlestatus), params: { titlestatus: { titlestatus: @titlestatus.titlestatus } }
    assert_redirected_to titlestatus_url(@titlestatus)
  end

  test "should destroy titlestatus" do
    assert_difference('Titlestatus.count', -1) do
      delete titlestatus_url(@titlestatus)
    end

    assert_redirected_to titlestatuses_url
  end
end
