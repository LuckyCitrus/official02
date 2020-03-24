require 'test_helper'

class EmployeestatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employeestatus = employeestatuses(:one)
  end

  test "should get index" do
    get employeestatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_employeestatus_url
    assert_response :success
  end

  test "should create employeestatus" do
    assert_difference('Employeestatus.count') do
      post employeestatuses_url, params: { employeestatus: { employeestatus: @employeestatus.employeestatus } }
    end

    assert_redirected_to employeestatus_url(Employeestatus.last)
  end

  test "should show employeestatus" do
    get employeestatus_url(@employeestatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_employeestatus_url(@employeestatus)
    assert_response :success
  end

  test "should update employeestatus" do
    patch employeestatus_url(@employeestatus), params: { employeestatus: { employeestatus: @employeestatus.employeestatus } }
    assert_redirected_to employeestatus_url(@employeestatus)
  end

  test "should destroy employeestatus" do
    assert_difference('Employeestatus.count', -1) do
      delete employeestatus_url(@employeestatus)
    end

    assert_redirected_to employeestatuses_url
  end
end
