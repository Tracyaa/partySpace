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

  def new
    @venue = Venue.find(params[:venue_id])
    @booking = Booking.new
  end

  def create
    booking_params[:total_price] = booking_params[:duration]
    @booking = Booking.create(booking_params)
    byebug

    redirect_to @current_user
  end

  private

  def get_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :venue_id, :date, :total_price, :duration)
  end

end
