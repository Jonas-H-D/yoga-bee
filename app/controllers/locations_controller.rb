class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.save

    redirect_to location
  end

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :city, :country, :number_of_rooms, :capacity, :price_per_night, :rating, :description)
  end
end
