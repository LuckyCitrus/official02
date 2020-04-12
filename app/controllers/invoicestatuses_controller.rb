class InvoicestatusesController < ApplicationController
  before_action :authenticate_user!, :employee_only
  before_action :set_invoicestatus, only: [:show, :edit, :update, :destroy]

  # GET /invoicestatuses
  # GET /invoicestatuses.json
  def index
    @invoicestatuses = Invoicestatus.all.order(created_at: :desc)
  end

  # GET /invoicestatuses/1
  # GET /invoicestatuses/1.json
  def show
  end

  # GET /invoicestatuses/new
  def new
    @invoicestatus = Invoicestatus.new
  end

  # GET /invoicestatuses/1/edit
  def edit
  end

  # POST /invoicestatuses
  # POST /invoicestatuses.json
  def create
    @invoicestatus = Invoicestatus.new(invoicestatus_params)

    respond_to do |format|
      if @invoicestatus.save
        format.html { redirect_to @invoicestatus, notice: 'Invoicestatus was successfully created.' }
        format.json { render :show, status: :created, location: @invoicestatus }
      else
        format.html { render :new }
        format.json { render json: @invoicestatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoicestatuses/1
  # PATCH/PUT /invoicestatuses/1.json
  def update
    respond_to do |format|
      if @invoicestatus.update(invoicestatus_params)
        format.html { redirect_to @invoicestatus, notice: 'Invoicestatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoicestatus }
      else
        format.html { render :edit }
        format.json { render json: @invoicestatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoicestatuses/1
  # DELETE /invoicestatuses/1.json
  def destroy
    @invoicestatus.destroy
    respond_to do |format|
      format.html { redirect_to invoicestatuses_url, notice: 'Invoicestatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoicestatus
      @invoicestatus = Invoicestatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invoicestatus_params
      params.require(:invoicestatus).permit(:invoicestatus)
    end
end
