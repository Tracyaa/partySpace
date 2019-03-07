class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def login_user(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def logged_in?
    # turns current_user into a boolean
    !!current_user
  end


  # before_action :authorized
  # helper_method :current_user, :logged_in?
  #
  #
  # private
  #
  # def login_user(user)
  #   session[:user_id] = user.id
  # end
  #
  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end
  #
  # def logged_in?
  #   # turns current_user into a boolean
  #   !!current_user
  # end
  #
  # def authorized
  #   unless logged_in?
  #     flash[:notice] = "You must be logged in to see this page"
  #     # redirect_to login_path
  #     # redirect_to users_path
  #   end
  # end

end
