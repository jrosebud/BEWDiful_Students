class PlacesController < ApplicationController

  def index
    @place = Place.new
  end
  
  def new
    @place = Place.new
  end
  
  def create
    @place = Place.new place_params
    
    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end
  
  private
  
  def place_params
    params.require(:place).permit(:name, :address, :city, :state, :zip, :phone, :website, :open, :close, :open2, :close2, :image)
  end

end
