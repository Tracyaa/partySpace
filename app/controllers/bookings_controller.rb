class BookingsController < ApplicationController

  before_action :get_booking, only: [:show, :edit, :update]


  def index
    @bookings = Booking.all
  end

  def show

  end

  def edit

  end

  def update
    @booking.update(booking_params)
    redirect_to @booking
  end

  private

  def get_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :total_price, :duration)
  end

end
