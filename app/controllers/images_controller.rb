class ImagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @images = Image.all
  end

  def new
    @images = Image.new
  end

  def show
    @images =Image.find(params[:id])
  end

  def create
    @images = current_user.image.build(image_params)
    if @images.save
      redirect_to @images, notice: 'Image uploaded!'
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:description, :image)
  end

end
