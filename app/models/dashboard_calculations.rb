class DashboardCalculations
	def self.invoices_by_month
        Invoice.group_by_month(:invoicedate, format: '%b %Y').sum(:amountdue)
    end


end