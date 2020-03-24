class DummyusersController < ApplicationController
  before_action :set_dummyuser, only: [:show, :edit, :update, :destroy]

  # GET /dummyusers
  # GET /dummyusers.json
  def index
    @dummyusers = Dummyuser.all
  end

  # GET /dummyusers/1
  # GET /dummyusers/1.json
  def show
  end

  # GET /dummyusers/new
  def new
    @dummyuser = Dummyuser.new
  end

  # GET /dummyusers/1/edit
  def edit
  end

  # POST /dummyusers
  # POST /dummyusers.json
  def create
    @dummyuser = Dummyuser.new(dummyuser_params)

    respond_to do |format|
      if @dummyuser.save
        format.html { redirect_to @dummyuser, notice: 'Dummyuser was successfully created.' }
        format.json { render :show, status: :created, location: @dummyuser }
      else
        format.html { render :new }
        format.json { render json: @dummyuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dummyusers/1
  # PATCH/PUT /dummyusers/1.json
  def update
    respond_to do |format|
      if @dummyuser.update(dummyuser_params)
        format.html { redirect_to @dummyuser, notice: 'Dummyuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @dummyuser }
      else
        format.html { render :edit }
        format.json { render json: @dummyuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dummyusers/1
  # DELETE /dummyusers/1.json
  def destroy
    @dummyuser.destroy
    respond_to do |format|
      format.html { redirect_to dummyusers_url, notice: 'Dummyuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dummyuser
      @dummyuser = Dummyuser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dummyuser_params
      params.require(:dummyuser).permit(:username, :password, :dummyrole_id)
    end
end
