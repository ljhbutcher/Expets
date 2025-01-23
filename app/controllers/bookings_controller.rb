class BookingsController < ApplicationController
  before_action :set_exotic_pet, only: [:new, :create]
  before_action :set_booking, only: [:destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.exotic_pet = @exotic_pet
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path(@exotic_pet)
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully deleted.'
  end

  private

  def set_exotic_pet
    @exotic_pet = ExoticPet.find(params[:exotic_pet_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :event_details, :contact_email, :contact_phone)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
