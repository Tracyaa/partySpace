class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :current_user, :logged_in?


  private

  # def log_in_user(user)
  #   session[:user_id] = user.id
  # end

  def login_user(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    # turns current_user into a boolean
    !!current_user
  end

  def authorized
    unless logged_in?
      flash[:notice] = "You must be logged in to see this page"
      # redirect_to login_path
      # redirect_to users_path
    end
  end

end
