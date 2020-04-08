class ShipmentstatusesController < ApplicationController
  before_action :authenticate_user!, :employee_only
  before_action :set_shipmentstatus, only: [:show, :edit, :update, :destroy]

  # GET /shipmentstatuses
  # GET /shipmentstatuses.json
  def index
    @shipmentstatuses = Shipmentstatus.all
  end

  # GET /shipmentstatuses/1
  # GET /shipmentstatuses/1.json
  def show
  end

  # GET /shipmentstatuses/new
  def new
    @shipmentstatus = Shipmentstatus.new
  end

  # GET /shipmentstatuses/1/edit
  def edit
  end

  # POST /shipmentstatuses
  # POST /shipmentstatuses.json
  def create
    @shipmentstatus = Shipmentstatus.new(shipmentstatus_params)

    respond_to do |format|
      if @shipmentstatus.save
        format.html { redirect_to @shipmentstatus, notice: 'Shipmentstatus was successfully created.' }
        format.json { render :show, status: :created, location: @shipmentstatus }
      else
        format.html { render :new }
        format.json { render json: @shipmentstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipmentstatuses/1
  # PATCH/PUT /shipmentstatuses/1.json
  def update
    respond_to do |format|
      if @shipmentstatus.update(shipmentstatus_params)
        format.html { redirect_to @shipmentstatus, notice: 'Shipmentstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipmentstatus }
      else
        format.html { render :edit }
        format.json { render json: @shipmentstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipmentstatuses/1
  # DELETE /shipmentstatuses/1.json
  def destroy
    @shipmentstatus.destroy
    authorize @shipmentstatus
    respond_to do |format|
      format.html { redirect_to shipmentstatuses_url, notice: 'Shipmentstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipmentstatus
      @shipmentstatus = Shipmentstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipmentstatus_params
      params.require(:shipmentstatus).permit(:shipmentstatus)
    end
end
