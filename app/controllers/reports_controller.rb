class ReportsController < ApplicationController
	def active_orders
    @active_orders = ActiveOrder.all
	end

	def active_invoices
    @active_invoices = ActiveInvoice.all
	end

	def auction_orders
    @auction_orders = AuctionOrder.all
	end
	
end