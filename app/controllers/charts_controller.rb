class ChartsController < ApplicationController

	def invoices_by_month
		render json: DashboardCalculations.invoices_by_month
	end

	def orders_by_month
		render json: DashboardCalculations.orders_by_month
	end


end