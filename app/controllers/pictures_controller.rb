class PicturesController < ApplicationController
  # ApplicationController is a class given by RAILS itself
  def index
    @pictures = Picture.all
  end
  def show
    @picture = Picture.find(params[:id])
  end
end
