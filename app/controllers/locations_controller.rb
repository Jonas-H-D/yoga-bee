class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.save

    redirect_to location_path(@location)
  end

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
  @location = Location.find(params[:id])
  @location.update(location_params)

  redirect_to location_path(@location)
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :city, :country, :number_of_rooms, :capacity, :price_per_night, :rating, :description, :zip_code, :currency, :capacity_activity_room)
  end
end
