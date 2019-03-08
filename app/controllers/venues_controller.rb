class VenuesController < ApplicationController

  before_action :get_venue, only: [:show, :edit, :update, :destroy]

  def index
    if params[:sort_price]
      @venues = Venue.sort_by_price
    else
      @venues = Venue.all
    end
  end

  def show
    # byebug
  end

  def new
    @current_user
    @venue = Venue.new
  end

  def create
    params[:venue][:amenities] = params[:venue][:amenities][1..-1].to_json
    @venue = Venue.create(venue_params)
    if @venue.valid?
      redirect_to @venue
    else
      render :new
    end

  end

  def edit

  end

  def update
    @venue.amenities.clear
    params[:venue][:amenities] = params[:venue][:amenities][1..-1].join(", ")
    @venue.update(venue_params)
    if @venue.valid?
      redirect_to venue_path(@venue)
    else
      render :edit
    end
  end

  def destroy
    @venue.destroy
    redirect_to @current_user
  end

  private

  def get_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :location, :price, :capacity, :activity, :amenities, :img_url, :user_id)
  end

end
