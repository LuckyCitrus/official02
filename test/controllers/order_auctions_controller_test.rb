require 'test_helper'

class OrderAuctionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_auction = order_auctions(:one)
  end

  test "should get index" do
    get order_auctions_url
    assert_response :success
  end

  test "should get new" do
    get new_order_auction_url
    assert_response :success
  end

  test "should create order_auction" do
    assert_difference('OrderAuction.count') do
      post order_auctions_url, params: { order_auction: { auction_id: @order_auction.auction_id, order_id: @order_auction.order_id } }
    end

    assert_redirected_to order_auction_url(OrderAuction.last)
  end

  test "should show order_auction" do
    get order_auction_url(@order_auction)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_auction_url(@order_auction)
    assert_response :success
  end

  test "should update order_auction" do
    patch order_auction_url(@order_auction), params: { order_auction: { auction_id: @order_auction.auction_id, order_id: @order_auction.order_id } }
    assert_redirected_to order_auction_url(@order_auction)
  end

  test "should destroy order_auction" do
    assert_difference('OrderAuction.count', -1) do
      delete order_auction_url(@order_auction)
    end

    assert_redirected_to order_auctions_url
  end
end
