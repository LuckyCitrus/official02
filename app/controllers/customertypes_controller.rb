class CustomertypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_customertype, only: [:show, :edit, :update, :destroy]

  # GET /customertypes
  # GET /customertypes.json
  def index
    @customertypes = Customertype.all
  end

  # GET /customertypes/1
  # GET /customertypes/1.json
  def show
  end

  # GET /customertypes/new
  def new
    @customertype = Customertype.new
  end

  # GET /customertypes/1/edit
  def edit
  end

  # POST /customertypes
  # POST /customertypes.json
  def create
    @customertype = Customertype.new(customertype_params)

    respond_to do |format|
      if @customertype.save
        format.html { redirect_to @customertype, notice: 'Customertype was successfully created.' }
        format.json { render :show, status: :created, location: @customertype }
      else
        format.html { render :new }
        format.json { render json: @customertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customertypes/1
  # PATCH/PUT /customertypes/1.json
  def update
    respond_to do |format|
      if @customertype.update(customertype_params)
        format.html { redirect_to @customertype, notice: 'Customertype was successfully updated.' }
        format.json { render :show, status: :ok, location: @customertype }
      else
        format.html { render :edit }
        format.json { render json: @customertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customertypes/1
  # DELETE /customertypes/1.json
  def destroy
    @customertype.destroy
    respond_to do |format|
      format.html { redirect_to customertypes_url, notice: 'Customertype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customertype
      @customertype = Customertype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customertype_params
      params.require(:customertype).permit(:customertype)
    end
end
