class BookingsController < ApplicationController

  before_action :get_booking, only: [:show, :edit, :update, :destroy]


  def index
    @bookings = Booking.all
  end

  def show

  end

  def edit

  end

  def update
    booking_params[:total_price] = booking_params[:duration].to_i * booking_params[:total_price].to_i
    @booking.update(booking_params)
    redirect_to @booking
  end

  def new
    @venue = Venue.find(params[:venue_id])
    @booking = Booking.new
  end

  def create
    booking_params[:total_price] = booking_params[:duration].to_i * booking_params[:total_price].to_i
    @booking = Booking.create(booking_params)
    # byebug

    redirect_to @current_user
  end

  def destroy

  end

  private

  def get_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :venue_id, :date, :total_price, :duration)
  end

end
