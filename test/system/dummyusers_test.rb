require "application_system_test_case"

class DummyusersTest < ApplicationSystemTestCase
  setup do
    @dummyuser = dummyusers(:one)
  end

  test "visiting the index" do
    visit dummyusers_url
    assert_selector "h1", text: "Dummyusers"
  end

  test "creating a Dummyuser" do
    visit dummyusers_url
    click_on "New Dummyuser"

    fill_in "Dummyrole", with: @dummyuser.dummyrole_id
    fill_in "Password", with: @dummyuser.password
    fill_in "Username", with: @dummyuser.username
    click_on "Create Dummyuser"

    assert_text "Dummyuser was successfully created"
    click_on "Back"
  end

  test "updating a Dummyuser" do
    visit dummyusers_url
    click_on "Edit", match: :first

    fill_in "Dummyrole", with: @dummyuser.dummyrole_id
    fill_in "Password", with: @dummyuser.password
    fill_in "Username", with: @dummyuser.username
    click_on "Update Dummyuser"

    assert_text "Dummyuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Dummyuser" do
    visit dummyusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dummyuser was successfully destroyed"
  end
end
