class VenuesController < ApplicationController

  before_action :get_venue, only: [:show, :edit, :update]

  def index
    @venues = Venue.all
  end

  def show
  end

  def edit
    @amenities = ["Lights", "Music Equipment", "Sound System", "Table Seating", "Catering"]
    @activities = ["Birthday Party", "Wedding Shower", "Baby Shower", "Corporate", "Dinner", "Party"]
  end

  def update
    @venue.update(venue_params)
    redirect_to @venue
  end

  private

  def get_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :location, :price, :capacity, :amentitie, :img_url)
  end

end
