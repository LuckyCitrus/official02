require 'test_helper'

class AuctionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auction = auctions(:one)
  end

  test "should get index" do
    get auctions_url
    assert_response :success
  end

  test "should get new" do
    get new_auction_url
    assert_response :success
  end

  test "should create auction" do
    assert_difference('Auction.count') do
      post auctions_url, params: { auction: { address: @auction.address, auctionname: @auction.auctionname, location_id: @auction.location_id } }
    end

    assert_redirected_to auction_url(Auction.last)
  end

  test "should show auction" do
    get auction_url(@auction)
    assert_response :success
  end

  test "should get edit" do
    get edit_auction_url(@auction)
    assert_response :success
  end

  test "should update auction" do
    patch auction_url(@auction), params: { auction: { address: @auction.address, auctionname: @auction.auctionname, location_id: @auction.location_id } }
    assert_redirected_to auction_url(@auction)
  end

  test "should destroy auction" do
    assert_difference('Auction.count', -1) do
      delete auction_url(@auction)
    end

    assert_redirected_to auctions_url
  end
end
