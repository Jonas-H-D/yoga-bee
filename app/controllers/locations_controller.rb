class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @location = Location.new
    authorize @location
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    @location.save
    authorize @location

    if @location.save
      redirect_to location_path(@location), notice: 'New location successfully created!'
    else
      render :new
    end
  end

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    authorize @location
  end

  def edit
    @location = Location.find(params[:id])
    authorize @location
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)

    redirect_to location_path(@location)
    authorize @location
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    redirect_to locations_path
    authorize @location
  end

  private

  def location_params
    params.require(:location).permit(:name, :address, :city, :country, :number_of_rooms, :capacity, :price_per_night, :rating, :description, :zip_code, :currency, :capacity_activity_room)
  end
end
