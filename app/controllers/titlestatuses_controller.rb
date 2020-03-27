class TitlestatusesController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_titlestatus, only: [:show, :edit, :update, :destroy]
  #load_and_authorize_resource

  # GET /titlestatuses
  # GET /titlestatuses.json
  def index
    @titlestatuses = Titlestatus.all
  end

  # GET /titlestatuses/1
  # GET /titlestatuses/1.json
  def show
  end

  # GET /titlestatuses/new
  def new
    @titlestatus = Titlestatus.new
  end

  # GET /titlestatuses/1/edit
  def edit
  end

  # POST /titlestatuses
  # POST /titlestatuses.json
  def create
    @titlestatus = Titlestatus.new(titlestatus_params)

    respond_to do |format|
      if @titlestatus.save
        format.html { redirect_to @titlestatus, notice: 'Titlestatus was successfully created.' }
        format.json { render :show, status: :created, location: @titlestatus }
      else
        format.html { render :new }
        format.json { render json: @titlestatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titlestatuses/1
  # PATCH/PUT /titlestatuses/1.json
  def update
    respond_to do |format|
      if @titlestatus.update(titlestatus_params)
        format.html { redirect_to @titlestatus, notice: 'Titlestatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @titlestatus }
      else
        format.html { render :edit }
        format.json { render json: @titlestatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titlestatuses/1
  # DELETE /titlestatuses/1.json
  def destroy
    @titlestatus.destroy
    respond_to do |format|
      format.html { redirect_to titlestatuses_url, notice: 'Titlestatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titlestatus
      @titlestatus = Titlestatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def titlestatus_params
      params.require(:titlestatus).permit(:titlestatus)
    end
end
