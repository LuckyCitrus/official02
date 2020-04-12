class ActiveInvoicePdf < Prawn::Document
require 'date'

	def initialize(active_invoices)
    	super(page_layout: :portrait)
		@active_invoices  = ActiveInvoice.all
    	font "Times-Roman"
		bounding_box([0, cursor], width: 535, height: 14) do
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
		bounding_box([0, cursor], width: 535, height: 36) do
			text_box "Monthly Active Invoices", size: 14, style: :bold, align: :center
		end
		table order_summary do
			row(0).font_style = :bold
			columns(0..5).align = :left
			columns(0..5).size = 11
			self.row_colors = ["DDDDDD", "FFFFFF"]
			self.header = true
			self.position = :center
			self.cell_style = {padding: [12, 10]}
			  
		end
	end

	def order_summary
		[["Name", "Email", "Invoice", "Invoice Date", "Invoice Status"]]+
		@active_invoices.map do |active_invoice|
			[active_invoice.name, active_invoice.email, active_invoice.invoicenum, active_invoice.invoicedate.to_s(:short_date), active_invoice.invoicestatus]
		end
	end
			
end
