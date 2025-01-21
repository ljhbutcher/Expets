class BookingsController < ApplicationController

  def index
    @bookings = Booking.new
  end

  def create
    @exotic_pets = ExoticPets.find(params[:id])
    @bookings = Booking.new(booking_params)
    @booking.exotic_pets = @exotic_pets
    if @booking.save
      redirect_to bookings_path(@exotic_pets)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :exotic_pet_id)
  end
end
