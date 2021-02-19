class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.save

    if @booking.save
      redirect_to booking_path(@booking), notice: 'New booking successfully created!'
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to locations_path
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival, :departure, :number_of_rooms, :number_of_people, :location_id)
  end
end
