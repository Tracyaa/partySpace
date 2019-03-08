class FavoritesController < ApplicationController

  before_action :get_favorite, only: [:show, :destroy]

  def index
    @favorites = Favorite.all
  end

  def new
    @venue = Venue.find(params[:venue_id])
    @favorite = Favorite.new
  end

  def create
    favorite_params[:total_price] = favorite_params[:duration]
    @favorite = Favorite.create(favorite_params)
    # byebug
    redirect_to @current_user
  end

  def destroy
    @favorite.destroy
    redirect_to @current_user
  end

  private

  def get_favorite
    byebug
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:user_id, :venue_id)
  end

end
