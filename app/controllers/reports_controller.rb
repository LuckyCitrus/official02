class ReportsController < ApplicationController
  before_action :authenticate_user!, :employee_only

	def active_orders
		@active_orders = ActiveOrder.all

		respond_to do |format|
			format.html
			format.pdf do
				pdf = ActiveOrderPdf.new(@active_orders)
				send_data pdf.render,
				filename: "Active_Orders_" + Date.today.to_s(:num_date) + ".pdf",
				type: "application/pdf",
				disposition: "inline"
			end
		end
	end

	def active_invoices
		@active_invoices = ActiveInvoice.all
		
		respond_to do |format|
			format.html
			format.pdf do
				pdf = ActiveInvoicePdf.new(@active_invoices)
				send_data pdf.render,
				filename: "Active_Invoices_" + Date.today.to_s(:num_date) + ".pdf",
				type: "application/pdf",
				disposition: "inline"
			end
		end
	end

	def auction_orders
		@auction_orders = AuctionOrder.all
		respond_to do |format|
			format.html
			format.pdf do
				pdf = AuctionOrderPdf.new(@auction_orders)
				send_data pdf.render,
				filename: "Auction_Total_Orders_" + Date.today.to_s(:num_date) + ".pdf",
				type: "application/pdf",
				disposition: "inline"
			end
		end
	end

end