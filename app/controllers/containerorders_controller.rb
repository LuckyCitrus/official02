class ContainerordersController < ApplicationController
  before_action :authenticate_user!, :employee_only
  before_action :set_containerorder, only: [:show, :edit, :update, :destroy]

  # GET /containerorders
  # GET /containerorders.json
  def index
    @containerorders = Containerorder.all
  end

  # GET /containerorders/1
  # GET /containerorders/1.json
  def show
  end

  # GET /containerorders/new
  def new
    @containerorder = Containerorder.new
  end

  # GET /containerorders/1/edit
  def edit
  end

  # POST /containerorders
  # POST /containerorders.json
  def create
    @containerorder = Containerorder.new(containerorder_params)

    respond_to do |format|
      if @containerorder.save
        format.html { redirect_to @containerorder, notice: 'Containerorder was successfully created.' }
        format.json { render :show, status: :created, location: @containerorder }
      else
        format.html { render :new }
        format.json { render json: @containerorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /containerorders/1
  # PATCH/PUT /containerorders/1.json
  def update
    respond_to do |format|
      if @containerorder.update(containerorder_params)
        format.html { redirect_to @containerorder, notice: 'Containerorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @containerorder }
      else
        format.html { render :edit }
        format.json { render json: @containerorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /containerorders/1
  # DELETE /containerorders/1.json
  def destroy
    @containerorder.destroy
    authorize @containerorder
    respond_to do |format|
      format.html { redirect_to containerorders_url, notice: 'Containerorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_containerorder
      @containerorder = Containerorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def containerorder_params
      params.require(:containerorder).permit(:container_id, :order_id)
    end
end
