require "application_system_test_case"

class EmployeestatusesTest < ApplicationSystemTestCase
  setup do
    @employeestatus = employeestatuses(:one)
  end

  test "visiting the index" do
    visit employeestatuses_url
    assert_selector "h1", text: "Employeestatuses"
  end

  test "creating a Employeestatus" do
    visit employeestatuses_url
    click_on "New Employeestatus"

    fill_in "Employeestatus", with: @employeestatus.employeestatus
    click_on "Create Employeestatus"

    assert_text "Employeestatus was successfully created"
    click_on "Back"
  end

  test "updating a Employeestatus" do
    visit employeestatuses_url
    click_on "Edit", match: :first

    fill_in "Employeestatus", with: @employeestatus.employeestatus
    click_on "Update Employeestatus"

    assert_text "Employeestatus was successfully updated"
    click_on "Back"
  end

  test "destroying a Employeestatus" do
    visit employeestatuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employeestatus was successfully destroyed"
  end
end
