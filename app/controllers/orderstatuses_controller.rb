class OrderstatusesController < ApplicationController
  before_action :authenticate_user!, :employee_only
  before_action :set_orderstatus, only: [:show, :edit, :update, :destroy]

  # GET /orderstatuses
  # GET /orderstatuses.json
  def index
    @orderstatuses = Orderstatus.where("orderstatuses.id > 1").order(created_at: :desc)
  end

  # GET /orderstatuses/1
  # GET /orderstatuses/1.json
  def show
  end

  # GET /orderstatuses/new
  def new
    @orderstatus = Orderstatus.new
  end

  # GET /orderstatuses/1/edit
  def edit
  end

  # POST /orderstatuses
  # POST /orderstatuses.json
  def create
    @orderstatus = Orderstatus.new(orderstatus_params)

    respond_to do |format|
      if @orderstatus.save
        format.html { redirect_to @orderstatus, notice: 'Orderstatus was successfully created.' }
        format.json { render :show, status: :created, location: @orderstatus }
      else
        format.html { render :new }
        format.json { render json: @orderstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderstatuses/1
  # PATCH/PUT /orderstatuses/1.json
  def update
    respond_to do |format|
      if @orderstatus.update(orderstatus_params)
        format.html { redirect_to @orderstatus, notice: 'Orderstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @orderstatus }
      else
        format.html { render :edit }
        format.json { render json: @orderstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderstatuses/1
  # DELETE /orderstatuses/1.json
  def destroy
    @orderstatus.destroy
    respond_to do |format|
      format.html { redirect_to orderstatuses_url, notice: 'Orderstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderstatus
      @orderstatus = Orderstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orderstatus_params
      params.require(:orderstatus).permit(:orderstatus)
    end
end
