class DummyrolesController < ApplicationController
  before_action :set_dummyrole, only: [:show, :edit, :update, :destroy]

  # GET /dummyroles
  # GET /dummyroles.json
  def index
    @dummyroles = Dummyrole.all
  end

  # GET /dummyroles/1
  # GET /dummyroles/1.json
  def show
  end

  # GET /dummyroles/new
  def new
    @dummyrole = Dummyrole.new
  end

  # GET /dummyroles/1/edit
  def edit
  end

  # POST /dummyroles
  # POST /dummyroles.json
  def create
    @dummyrole = Dummyrole.new(dummyrole_params)

    respond_to do |format|
      if @dummyrole.save
        format.html { redirect_to @dummyrole, notice: 'Dummyrole was successfully created.' }
        format.json { render :show, status: :created, location: @dummyrole }
      else
        format.html { render :new }
        format.json { render json: @dummyrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dummyroles/1
  # PATCH/PUT /dummyroles/1.json
  def update
    respond_to do |format|
      if @dummyrole.update(dummyrole_params)
        format.html { redirect_to @dummyrole, notice: 'Dummyrole was successfully updated.' }
        format.json { render :show, status: :ok, location: @dummyrole }
      else
        format.html { render :edit }
        format.json { render json: @dummyrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dummyroles/1
  # DELETE /dummyroles/1.json
  def destroy
    @dummyrole.destroy
    respond_to do |format|
      format.html { redirect_to dummyroles_url, notice: 'Dummyrole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dummyrole
      @dummyrole = Dummyrole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dummyrole_params
      params.require(:dummyrole).permit(:role)
    end
end
