class BookingsController < ApplicationController
  before_action :set_exotic_pet, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.exotic_pet = @exotic_pet
    @booking.user = current_user

    if @booking.save
      redirect_to exotic_pet_path(@exotic_pet)
    end
  end

  private

  def set_exotic_pet
    @exotic_pet = ExoticPet.find(params[:exotic_pet_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :event_details, :contact_email, :contact_phone)
  end
end
