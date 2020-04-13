class InvoiceshipmentsController < ApplicationController
  before_action :authenticate_user!, :employee_only
  before_action :set_invoiceshipment, only: [:show, :edit, :update, :destroy]

  # GET /invoiceshipments
  # GET /invoiceshipments.json
  def index
    #@invoiceshipments = Invoiceshipment.all
    #@pagy, @invoiceshipments = pagy(Invoiceshipment)
    #@pagy, @invoiceshipments = pagy(Invoiceshipment.includes(:invoice).order("invoices.created_at DESC"))
    @pagy, @invoiceshipments = pagy(Invoiceshipment.where("invoiceshipments.id > 1").order(created_at: :desc))
  end

  # GET /invoiceshipments/1
  # GET /invoiceshipments/1.json
  def show
  end

  # GET /invoiceshipments/new
  def new
    @invoiceshipment = Invoiceshipment.new
  end

  # GET /invoiceshipments/1/edit
  def edit
  end

  # POST /invoiceshipments
  # POST /invoiceshipments.json
  def create
    @invoiceshipment = Invoiceshipment.new(invoiceshipment_params)

    respond_to do |format|
      if @invoiceshipment.save
        format.html { redirect_to @invoiceshipment, notice: 'Invoiceshipment was successfully created.' }
        format.json { render :show, status: :created, location: @invoiceshipment }
      else
        format.html { render :new }
        format.json { render json: @invoiceshipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoiceshipments/1
  # PATCH/PUT /invoiceshipments/1.json
  def update
    respond_to do |format|
      if @invoiceshipment.update(invoiceshipment_params)
        format.html { redirect_to @invoiceshipment, notice: 'Invoiceshipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoiceshipment }
      else
        format.html { render :edit }
        format.json { render json: @invoiceshipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoiceshipments/1
  # DELETE /invoiceshipments/1.json
  def destroy
    @invoiceshipment.destroy
    respond_to do |format|
      format.html { redirect_to invoiceshipments_url, notice: 'Invoiceshipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoiceshipment
      @invoiceshipment = Invoiceshipment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoiceshipment_params
      params.require(:invoiceshipment).permit(:shipment_id, :invoice_id)
    end
end
