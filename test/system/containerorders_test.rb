require "application_system_test_case"

class ContainerordersTest < ApplicationSystemTestCase
  setup do
    @containerorder = containerorders(:one)
  end

  test "visiting the index" do
    visit containerorders_url
    assert_selector "h1", text: "Containerorders"
  end

  test "creating a Containerorder" do
    visit containerorders_url
    click_on "New Containerorder"

    fill_in "Container", with: @containerorder.container_id
    fill_in "Order", with: @containerorder.order_id
    click_on "Create Containerorder"

    assert_text "Containerorder was successfully created"
    click_on "Back"
  end

  test "updating a Containerorder" do
    visit containerorders_url
    click_on "Edit", match: :first

    fill_in "Container", with: @containerorder.container_id
    fill_in "Order", with: @containerorder.order_id
    click_on "Update Containerorder"

    assert_text "Containerorder was successfully updated"
    click_on "Back"
  end

  test "destroying a Containerorder" do
    visit containerorders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Containerorder was successfully destroyed"
  end
end
