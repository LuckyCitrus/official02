class DashboardCalculations
	def self.invoices_by_month
        Invoice.group_by_month(:invoicedate, format: '%b %Y').sum(:amountdue)
    end

	def self.orders_by_month
        Order.group_by_month(:date, format: '%b %Y').sum(:quantity)
    end

end