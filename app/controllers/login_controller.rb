class LoginController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    # byebug
    if @user && @user.authenticate(params[:password])
      login_user(@user)
      redirect_to user_path(@user), notice: "Logged in."
    else
      flash[:errors] = "Email or password is invalid."
      redirect_to new_login_path
      # render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_path, notice: "Logged out!"
    # redirect_to root_url, notice: "Logged out!" #Need to sub 'root_url'?
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end


####

# def create
#   @user = User.find_by(username: params[:username])
#   if @user && @user.authenticate(params[:password])
#     log_in_user(@user)
#     redirect_to colors_path
#   else
#     flash[:errors] = ["The username or password you entered was not correct."]
#     redirect_to new_login_path
#   end
# end
#
#
# def destroy
#   session[:user_id] = nil
#   redirect_to colors_path
# end
