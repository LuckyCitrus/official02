class ShipmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shipment, only: [:show, :edit, :update, :destroy]

  # GET /shipments
  # GET /shipments.json
  def index
    #@shipments = Shipment.all
    #@shipments = policy_scope(Shipment)
    @pagy, @shipments = pagy(policy_scope(Shipment.order(date: :desc)))
  end

  # GET /shipments/1
  # GET /shipments/1.json
  def show
    @shipment = policy_scope(Shipment).find(params[:id])
  end

  # GET /shipments/new
  def new
    @shipment = Shipment.new
    authorize @shipment
  end

  # GET /shipments/1/edit
  def edit
  end

  # POST /shipments
  # POST /shipments.json
  def create
    @shipment = Shipment.new(shipment_params)

    respond_to do |format|
      if @shipment.save
        format.html { redirect_to @shipment, notice: 'Shipment was successfully created.' }
        format.json { render :show, status: :created, location: @shipment }
      else
        format.html { render :new }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipments/1
  # PATCH/PUT /shipments/1.json
  def update
    respond_to do |format|
      if @shipment.update(shipment_params)
        format.html { redirect_to @shipment, notice: 'Shipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipment }
      else
        format.html { render :edit }
        format.json { render json: @shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipments/1
  # DELETE /shipments/1.json
  def destroy
    @shipment.destroy
    authorize @shipment
    respond_to do |format|
      format.html { redirect_to shipments_url, notice: 'Shipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment
      @shipment = Shipment.find(params[:id])
      authorize @shipment
    end

    # Only allow a list of trusted parameters through.
    def shipment_params
      # params.require(:shipment).permit(:date, :quantity, :container, :warehouse_id, :shipmentmethod_id, :shipmentstatus_id)
      params.require(:shipment).permit(:shipmentnum,:date, :quantity, :warehouse_id, :shipmentmethod_id, :shipmentstatus_id,
      invoiceshipments_attributes: [:id, :invoice_id, :shipment_id, :_destroy] )
    end
end
