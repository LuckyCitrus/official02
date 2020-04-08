class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_image, only: [:show]

  def index
    # @images = Image.all
    # @images = Image.order(created_at: :desc).limit(15)
    @images = policy_scope(Image).order(created_at: :desc).limit(15)
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
      redirect_to @image, notice: 'Image uploaded!'
    else
      render :new
    end
  end

  private

  def set_image
    @image = Image.find(params[:id])
    authorize @image
  end

  def image_params
    params.require(:image).permit(:image, :description, :user_id)
  end

end
