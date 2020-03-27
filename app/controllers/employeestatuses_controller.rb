class EmployeestatusesController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_employeestatus, only: [:show, :edit, :update, :destroy]
  #load_and_authorize_resource

  # GET /employeestatuses
  # GET /employeestatuses.json
  def index
    @employeestatuses = Employeestatus.all
  end

  # GET /employeestatuses/1
  # GET /employeestatuses/1.json
  def show
  end

  # GET /employeestatuses/new
  def new
    @employeestatus = Employeestatus.new
  end

  # GET /employeestatuses/1/edit
  def edit
  end

  # POST /employeestatuses
  # POST /employeestatuses.json
  def create
    @employeestatus = Employeestatus.new(employeestatus_params)

    respond_to do |format|
      if @employeestatus.save
        format.html { redirect_to @employeestatus, notice: 'Employeestatus was successfully created.' }
        format.json { render :show, status: :created, location: @employeestatus }
      else
        format.html { render :new }
        format.json { render json: @employeestatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeestatuses/1
  # PATCH/PUT /employeestatuses/1.json
  def update
    respond_to do |format|
      if @employeestatus.update(employeestatus_params)
        format.html { redirect_to @employeestatus, notice: 'Employeestatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @employeestatus }
      else
        format.html { render :edit }
        format.json { render json: @employeestatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeestatuses/1
  # DELETE /employeestatuses/1.json
  def destroy
    @employeestatus.destroy
    respond_to do |format|
      format.html { redirect_to employeestatuses_url, notice: 'Employeestatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeestatus
      @employeestatus = Employeestatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employeestatus_params
      params.require(:employeestatus).permit(:employeestatus)
    end
end
