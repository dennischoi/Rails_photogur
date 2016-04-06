class PicturesController < ApplicationController
  # ApplicationController is a class given by RAILS itself
  def index
    @pictures = Picture.all
  end
  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      # if save was succussful if statement will go to index.html.erb
      redirect_to pictures_url
    else
      # otherwise render the view associated with the action :new (i.e. new.html.erb)

      render :new
    # render :text => "Saving a picture. URLL #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
    # commented the previous version of create which was only rendering text provided
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end
  
end
