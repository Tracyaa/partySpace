class HomeController < ApplicationController
  def index
    # @current_user = User.find(session[:user_id])
    # if @current_user = nil
    #   byebug
    #   redirect_to root_url
    # else
    #   @current_user = User.find(session[:user_id])
    #   # redirect_to new_login_path
    # end

    if @current_user != nil
      byebug
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
    # @current_user = User.find(session[:user_id])
    @venues = Venue.all
  end
end
