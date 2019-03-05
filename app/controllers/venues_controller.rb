class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end




  private

  def get_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :location, :price )
  end

end
