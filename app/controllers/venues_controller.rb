class VenuesController < ApplicationController

  before_action :get_venue, only: [:show, :edit, :update]

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
    @users = User.all
    @venue = Venue.new
    # @user_id = User.all.sample.id
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
    # byebug
    @venue.amenities.clear
    params[:venue][:amenities] = params[:venue][:amenities][1..-1].to_json
    @venue.update(venue_params)
    if @venue.valid?
      redirect_to venue_path(@venue)
    else
      render :edit
    end
  end


  private

  def get_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :location, :price, :capacity, :activity, :amenities, :img_url, :user_id)
  end

end
