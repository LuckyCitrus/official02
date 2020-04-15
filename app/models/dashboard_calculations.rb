class DashboardCalculations
	def self.invoices_by_month
        Invoice.group_by_month(:invoicedate, format: '%b %Y').sum(:amountdue)
    end

	def self.orders_by_month
        Order.group_by_month(:date, format: '%b %Y').sum(:quantity)
    end

    def self.shipments_by_month
        Shipment.group_by_month(:date, format: '%b %Y').sum(:quantity)
    end

    def self.total_payments
        Payment.joins(:paymentstatus).where(["paymentstatuses.id = payments.paymentstatus_id"]).group("paymentstatuses.paymentstatus").count
    end

    def self.total_auction_orders
        #Order.joins(order_auctions: :auction).where(["orders.id = order_auctions.order_id AND orders.date > CURRENT_DATE - INTERVAL '1 month'"]).group("auctions.auctionname").order("SUM(orders.quantity) DESC").sum(:quantity)
        
        Order.joins(car: :auction).where(["auctions.id = cars.auction_id AND orders.id = cars.order_id AND orders.date > CURRENT_DATE - INTERVAL '1 month'"]).group("auctions.auctionname").order("SUM(orders.quantity) DESC").sum(:quantity)
    end

end
