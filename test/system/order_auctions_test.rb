require "application_system_test_case"

class OrderAuctionsTest < ApplicationSystemTestCase
  setup do
    @order_auction = order_auctions(:one)
  end

  test "visiting the index" do
    visit order_auctions_url
    assert_selector "h1", text: "Order Auctions"
  end

  test "creating a Order auction" do
    visit order_auctions_url
    click_on "New Order Auction"

    fill_in "Auction", with: @order_auction.auction_id
    fill_in "Order", with: @order_auction.order_id
    click_on "Create Order auction"

    assert_text "Order auction was successfully created"
    click_on "Back"
  end

  test "updating a Order auction" do
    visit order_auctions_url
    click_on "Edit", match: :first

    fill_in "Auction", with: @order_auction.auction_id
    fill_in "Order", with: @order_auction.order_id
    click_on "Update Order auction"

    assert_text "Order auction was successfully updated"
    click_on "Back"
  end

  test "destroying a Order auction" do
    visit order_auctions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order auction was successfully destroyed"
  end
end
