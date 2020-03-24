class KeystatusesController < ApplicationController
  before_action :set_keystatus, only: [:show, :edit, :update, :destroy]

  # GET /keystatuses
  # GET /keystatuses.json
  def index
    @keystatuses = Keystatus.all
  end

  # GET /keystatuses/1
  # GET /keystatuses/1.json
  def show
  end

  # GET /keystatuses/new
  def new
    @keystatus = Keystatus.new
  end

  # GET /keystatuses/1/edit
  def edit
  end

  # POST /keystatuses
  # POST /keystatuses.json
  def create
    @keystatus = Keystatus.new(keystatus_params)

    respond_to do |format|
      if @keystatus.save
        format.html { redirect_to @keystatus, notice: 'Keystatus was successfully created.' }
        format.json { render :show, status: :created, location: @keystatus }
      else
        format.html { render :new }
        format.json { render json: @keystatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keystatuses/1
  # PATCH/PUT /keystatuses/1.json
  def update
    respond_to do |format|
      if @keystatus.update(keystatus_params)
        format.html { redirect_to @keystatus, notice: 'Keystatus was successfully updated.' }
        format.json { render :show, status: :ok, location: @keystatus }
      else
        format.html { render :edit }
        format.json { render json: @keystatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keystatuses/1
  # DELETE /keystatuses/1.json
  def destroy
    @keystatus.destroy
    respond_to do |format|
      format.html { redirect_to keystatuses_url, notice: 'Keystatus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keystatus
      @keystatus = Keystatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def keystatus_params
      params.require(:keystatus).permit(:keystatus)
    end
end
