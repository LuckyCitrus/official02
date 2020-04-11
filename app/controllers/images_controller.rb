class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_image, only: [:show, :edit, :destroy]
  # before_action :set_image

  def index
    # @images = Image.all
    #@images = Image.order(created_at: :desc).limit(15)
    #@images = policy_scope(Image).order(created_at: :desc).limit(15)
    @pagy, @images = pagy(policy_scope(Image).order(created_at: :desc), items: 30)
  end

  def new
    @image = Image.new
    authorize @image
  end

  def show
    # @image =Image.find(params[:id])
    @image = policy_scope(Image).find(params[:id])
  end

  def create
    @image = current_user.images.build(image_params)

    if @image.save
      redirect_to @image, notice: 'Image was successfully uploaded!'
    else
      render :new
    end
  end

  def edit
     @image = Image.find(params[:id])
  end

  def update
    @image = Image.find params[:id]
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @image.destroy
    authorize @image

    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_image
    @image = Image.find(params[:id])
    #authorize @image
  end

  def image_params
    params.require(:image).permit(:id, :image, :description, :user_id, :order_id)
  end

end
