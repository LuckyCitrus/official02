class ActiveOrderPdf < Prawn::Document
require 'date'

	def initialize(active_orders)
    	super(page_layout: :landscape)
		@active_orders  = ActiveOrder.all
    	font "Times-Roman"
		bounding_box([0, cursor], width: 720, height: 14) do
			text_box 'Mitsab Incorporation', at: [bounds.left, cursor], size: 10
  			text_box Date.today.to_s(:num_date), align: :right, size: 10
		end

		orders_table

		page_count.times do |i|
        bounding_box([bounds.left, bounds.bottom], :width => bounds.width, :height => 30) {
        go_to_page i+1
             move_down 5 #document margin
             text "#{i+1} of #{page_count}", size: 10, align: :center
        }
    end
	end

	def orders_table	
		bounding_box([0, cursor], width: 720, height: 36) do
			text_box "Monthly Active Orders", size: 14, style: :bold, align: :center
		end
		table order_summary do
			row(0).font_style = :bold
			columns(0..9).align = :left
			columns(0..9).size = 10.2
			self.row_colors = ["DDDDDD", "FFFFFF"]
			self.cell_style = {padding: [10, 4]}
			self.header = true
		end
	end

	def order_summary
		[["Name", "Email", "Order", "Order Date", "Order Status", "Payment Status", "Shipment Status", "Container", "Warehouse"]]+
		@active_orders.map do |active_order|
			[active_order.name, active_order.email, active_order.ordernum, active_order.date.to_s(:short_date), active_order.orderstatus, active_order.paymentstatus, active_order.shipmentstatus, active_order.containernum, active_order.warehousename]
		end
	end
			
end
