require 'test_helper'

class DummyusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dummyuser = dummyusers(:one)
  end

  test "should get index" do
    get dummyusers_url
    assert_response :success
  end

  test "should get new" do
    get new_dummyuser_url
    assert_response :success
  end

  test "should create dummyuser" do
    assert_difference('Dummyuser.count') do
      post dummyusers_url, params: { dummyuser: { dummyrole_id: @dummyuser.dummyrole_id, password: @dummyuser.password, username: @dummyuser.username } }
    end

    assert_redirected_to dummyuser_url(Dummyuser.last)
  end

  test "should show dummyuser" do
    get dummyuser_url(@dummyuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_dummyuser_url(@dummyuser)
    assert_response :success
  end

  test "should update dummyuser" do
    patch dummyuser_url(@dummyuser), params: { dummyuser: { dummyrole_id: @dummyuser.dummyrole_id, password: @dummyuser.password, username: @dummyuser.username } }
    assert_redirected_to dummyuser_url(@dummyuser)
  end

  test "should destroy dummyuser" do
    assert_difference('Dummyuser.count', -1) do
      delete dummyuser_url(@dummyuser)
    end

    assert_redirected_to dummyusers_url
  end
end
