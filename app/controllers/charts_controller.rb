class ChartsController < ApplicationController

	def invoices_by_month
		render json: DashboardCalculations.invoices_by_month
	end

	def orders_by_month
		render json: DashboardCalculations.orders_by_month
	end

	def shipments_by_month
		render json: DashboardCalculations.shipments_by_month
	end

	def total_payments
		render json: DashboardCalculations.total_payments
	end

end