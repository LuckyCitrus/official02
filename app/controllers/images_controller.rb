class ImagesController < ApplicationController
  before_action :authenticate_user!

  def index
    # @images = Image.all
  end

  def new
    @images = Image.new
  end

  def show
  end
end
