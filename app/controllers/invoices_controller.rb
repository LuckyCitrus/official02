class InvoicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_invoice, only: [:show, :edit, :update, :destroy]


  # GET /invoices
  # GET /invoices.json
  def index
    #@invoices = Invoice.all
    #@invoices = policy_scope(Invoice)
    @pagy, @invoices = pagy(policy_scope(Invoice.order(invoicedate: :desc)))
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
    @invoice = policy_scope(Invoice).find(params[:id])
    @orders = @invoice.orders
    @car = Car.all

		respond_to do |format|
			format.html
			format.pdf do
				pdf = InvoicePdf.new(@invoice, @orders, @car)
				send_data pdf.render,
				filename: "Invoice_##{@invoice.invoicenum}_#{@invoice.customer.try(:cus_fullname)}.pdf",
				type: "application/pdf",
				disposition: "inline"
      end
    end

    gon.customer_invoice = Invoice.all
    gon.customer_orders = Order.all
    gon.customer_cars= Car.all
    # gon.customer_containerorders= Containerorder.all
    gon.customer_containers= Container.all
    gon.customer_shipments= Shipment.all
    gon.customer_warehouses= Warehouse.all
    gon.customer_locations= Location.all
    gon.customer_via= Shipmentmethod.all

  end


  # GET /invoices/new
  def new

    @invoice = Invoice.new
    authorize @invoice

    gon.customer_invoice = Invoice.all
    gon.customer_orders = Order.all
    gon.customer_cars= Car.all
    # gon.customer_containerorders= Containerorder.all
    gon.customer_containers= Container.all
    gon.customer_shipments= Shipment.all
    gon.customer_warehouses= Warehouse.all
    gon.customer_locations= Location.all
    gon.customer_via= Shipmentmethod.all

  end

  # GET /invoices/1/edit
  def edit

    @invoice = policy_scope(Invoice).find(params[:id])

    gon.customer_invoice = Invoice.all
    gon.customer_orders = Order.all
    gon.customer_cars= Car.all
    # gon.customer_containerorders= Containerorder.all
    gon.customer_containers= Container.all
    gon.customer_shipments= Shipment.all
    gon.customer_warehouses= Warehouse.all
    gon.customer_locations= Location.all
    gon.customer_via= Shipmentmethod.all

  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to @invoice, notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created, location: @invoice }
      else
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to @invoice, notice: 'Invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice.destroy
    authorize @invoice
    respond_to do |format|
      format.html { redirect_to invoices_url, notice: 'Invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
      authorize @invoice
    end

    # Only allow a list of trusted parameters through.
    def invoice_params
      # params.require(:invoice).permit(:invoicedate, :duedate, :customer_id, :employee_id, :order_id, :payment_id, :car_id, :shipment_id, :auction_id)
      params.require(:invoice).permit(:invoicedate, :duedate, :customer_id, :employee_id, :invoicestatus_id, :amountdue, :invoicenum, :shipment_id,
        orders_attributes: [:id, :ordernum, :date, :customer_id, :lotstock, :quantity, :price, :total, :invoice_id, :container_id, :orderstatus_id,:destroy_],
      payments_attributes: [:id, :paymentnum, :date, :amount, :paymentstatus_id, :paymentmethod_id, :customer_id, :invoice_id, :destroy_])

    end
end
