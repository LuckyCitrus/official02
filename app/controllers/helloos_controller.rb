class HelloosController < ApplicationController
  before_action :set_helloo, only: [:show, :edit, :update, :destroy]

  # GET /helloos
  # GET /helloos.json
  def index
    @helloos = Helloo.all
  end

  # GET /helloos/1
  # GET /helloos/1.json
  def show
  end

  # GET /helloos/new
  def new
    @helloo = Helloo.new
  end

  # GET /helloos/1/edit
  def edit
  end

  # POST /helloos
  # POST /helloos.json
  def create
    @helloo = Helloo.new(helloo_params)

    respond_to do |format|
      if @helloo.save
        format.html { redirect_to @helloo, notice: 'Helloo was successfully created.' }
        format.json { render :show, status: :created, location: @helloo }
      else
        format.html { render :new }
        format.json { render json: @helloo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /helloos/1
  # PATCH/PUT /helloos/1.json
  def update
    respond_to do |format|
      if @helloo.update(helloo_params)
        format.html { redirect_to @helloo, notice: 'Helloo was successfully updated.' }
        format.json { render :show, status: :ok, location: @helloo }
      else
        format.html { render :edit }
        format.json { render json: @helloo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helloos/1
  # DELETE /helloos/1.json
  def destroy
    @helloo.destroy
    respond_to do |format|
      format.html { redirect_to helloos_url, notice: 'Helloo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helloo
      @helloo = Helloo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def helloo_params
      params.require(:helloo).permit(:worldd)
    end
end
