class OrderAuctionsController < ApplicationController
  before_action :authenticate_user!, :employee_only
  before_action :set_order_auction, only: [:show, :edit, :update, :destroy]
  #load_and_authorize_resource

  # GET /order_auctions
  # GET /order_auctions.json
  def index
    @order_auctions = OrderAuction.all
  end

  # GET /order_auctions/1
  # GET /order_auctions/1.json
  def show
  end

  # GET /order_auctions/new
  def new
    @order_auction = OrderAuction.new
  end

  # GET /order_auctions/1/edit
  def edit
  end

  # POST /order_auctions
  # POST /order_auctions.json
  def create
    @order_auction = OrderAuction.new(order_auction_params)

    respond_to do |format|
      if @order_auction.save
        format.html { redirect_to @order_auction, notice: 'Order auction was successfully created.' }
        format.json { render :show, status: :created, location: @order_auction }
      else
        format.html { render :new }
        format.json { render json: @order_auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_auctions/1
  # PATCH/PUT /order_auctions/1.json
  def update
    respond_to do |format|
      if @order_auction.update(order_auction_params)
        format.html { redirect_to @order_auction, notice: 'Order auction was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_auction }
      else
        format.html { render :edit }
        format.json { render json: @order_auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_auctions/1
  # DELETE /order_auctions/1.json
  def destroy
    @order_auction.destroy
    respond_to do |format|
      format.html { redirect_to order_auctions_url, notice: 'Order auction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_auction
      @order_auction = OrderAuction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_auction_params
      params.require(:order_auction).permit(:order_id, :auction_id)
    end
end
