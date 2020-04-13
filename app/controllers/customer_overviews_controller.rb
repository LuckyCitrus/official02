class CustomerOverviewsController < ApplicationController
	before_action :authenticate_user!

	def index
		#@customer_overviews = CustomerOverview.all
		@pagy, @customer_overviews = pagy(policy_scope(CustomerOverview.order(date: :desc)))
	end
		
   private
    def set_customer_overview
      @customer_overview = CustomerOverview.find(params[:id])
	end
	
	def customer_overview_params
      params.require(:customer_overview).permit(:name, :car, :vinnumber, :date, :ordernum, :orderstatus, :invoicenum, :invoicestatus, :paymentnum, :paymentstatus, :shipmentnum, :shipmentstatus)
	end

end
