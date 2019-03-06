class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    # byebug
    @user = User.create(user_params)
    if @user.valid?
      login_user(@user)
      redirect_to user_path(@user)
    else
      # flash[:errors] = @user.errors.full_messages
      render :new
      # redirect_to new_user_path
    end
  end

  def edit
  end

  def update
    # raise params.inspect
    # @user.update(name: params[:user][:name], img_url: params[:user][:img_url])
    @user.update(user_params)
    # byebug
    redirect_to user_path(@user)

  end




  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :img_url)
  end

  def get_user
    @user = User.find(params[:id])
  end


end
