class ReportsController < ApplicationController

	def auction_orders
    @auction_orders = AuctionOrder.all
	end
	
end