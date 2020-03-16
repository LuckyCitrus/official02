json.extract! auction, :id, :auctionname, :address, :location_id, :created_at, :updated_at
json.url auction_url(auction, format: :json)
