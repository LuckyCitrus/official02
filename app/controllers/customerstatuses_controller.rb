class CustomerstatusesController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_customerstatus, only: [:show, :edit, :update, :destroy]
  #load_and_authorize_resource

  # GET /customerstatuses
  # GET /customerstatuses.json
  def index
    @customerstatuses = Customerstatus.all
  end

  # GET /customerstatuses/1
  # GET /customerstatuses/1.json
  def show
  end

  # GET /customerstatuses/new
  def new
    @customerstatus = Customerstatus.new
  end

  # GET /customerstatuses/1/edit
  def edit
  end

  # POST /customerstatuses
  # POST /customerstatuses.json
  def create
    @customerstatus = Customerstatus.new(customerstatus_params)

    respond_to do |format|
      if @customerstatus.save
        format.html { redirect_to @customerstatus, notice: 'Customerstatus was successfully created.' }
        format.json { render :show, status: :created, location: @customerstatus }
      else
        format.html { render :new }
        format.json { render json: @customerstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerstatuses/1
  # PATCH/PUT /customerstatuses/1.json
  def update
    respond_to do |format|
      if @customerstatus.update(customerstatus_params)
        format.html { redirect_to @customerstatus, notice: 'Customerstatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @customerstatus }
      else
        format.html { render :edit }
        format.json { render json: @customerstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerstatuses/1
  # DELETE /customerstatuses/1.json
  def destroy
    @customerstatus.destroy
    respond_to do |format|
      format.html { redirect_to customerstatuses_url, notice: 'Customerstatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerstatus
      @customerstatus = Customerstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customerstatus_params
      params.require(:customerstatus).permit(:customerstatus)
    end
end
