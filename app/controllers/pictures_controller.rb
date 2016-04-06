class PicturesController < ApplicationController
  # ApplicationController is a class given by RAILS itself
  def index
    @pictures = Picture.all
  end
  def show
    @picture = Picture.find(params[:id])
  end

  def new
  end

  def create
    render :text => "Saving a picture. URLL #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

end
