class OrderinvoicesController < ApplicationController
  before_action :authenticate_user!, :employee_only
  before_action :set_orderinvoice, only: [:show, :edit, :update, :destroy]

  # GET /orderinvoices
  # GET /orderinvoices.json
  def index
    #@orderinvoices = Orderinvoice.all
    @pagy, @orderinvoices = pagy(Orderinvoice)
  end

  # GET /orderinvoices/1
  # GET /orderinvoices/1.json
  def show
  end

  # GET /orderinvoices/new
  def new
    @orderinvoice = Orderinvoice.new
  end

  # GET /orderinvoices/1/edit
  def edit
  end

  # POST /orderinvoices
  # POST /orderinvoices.json
  def create
    @orderinvoice = Orderinvoice.new(orderinvoice_params)

    respond_to do |format|
      if @orderinvoice.save
        format.html { redirect_to @orderinvoice, notice: 'Orderinvoice was successfully created.' }
        format.json { render :show, status: :created, location: @orderinvoice }
      else
        format.html { render :new }
        format.json { render json: @orderinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderinvoices/1
  # PATCH/PUT /orderinvoices/1.json
  def update
    respond_to do |format|
      if @orderinvoice.update(orderinvoice_params)
        format.html { redirect_to @orderinvoice, notice: 'Orderinvoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @orderinvoice }
      else
        format.html { render :edit }
        format.json { render json: @orderinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderinvoices/1
  # DELETE /orderinvoices/1.json
  def destroy
    @orderinvoice.destroy
    respond_to do |format|
      format.html { redirect_to orderinvoices_url, notice: 'Orderinvoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderinvoice
      @orderinvoice = Orderinvoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orderinvoice_params
      params.require(:orderinvoice).permit(:order_id, :invoice_id)
    end
end
