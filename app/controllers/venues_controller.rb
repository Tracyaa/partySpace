class VenuesController < ApplicationController

  before_action :get_venue, only: [:show, :edit, :update]

  def index
    @venues = Venue.all
  end

  def show
  end

  def edit
  end

  def update
    @venue.update(venue_params)
    if @venue.valid?
      redirect_to @venue
    else
      render :new
    end
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.create(venue_params)
    if @venue.valid?
      redirect_to @venue
    else
      render :new
    end
  end

  private

  def get_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :location, :price, :capacity, :amentitie, :img_url)
  end

end
