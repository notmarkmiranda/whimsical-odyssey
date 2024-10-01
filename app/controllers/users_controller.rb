class UsersController < ApplicationController
  before_action :redirect_user, except: %i[ show ]
  before_action :require_user, only: %i[ show ]

  def new
    @user = User.new
  end

  def sign_up
    @user = User.find_or_initialize_by(email: user_params[:email])
    if @user.new_record?
      session[:email] = @user.email
      redirect_to new_password_path
    else
      flash[:error] = "Something went wrong."
      render :new
    end
  end

  def new_password
    @user = User.find_or_initialize_by(email: session[:email])
  end

  def create
    @user = User.find_or_initialize_by(email: session[:email]).tap do |user|
      user.password = user_params[:password]
      user.password_confirmation = user_params[:password_confirmation]
    end
    if @user.save
      session[:email] = nil
      session[:user_id] = @user.id
      redirect_to dashboard_path
    else
      flash[:error] = "Something went wrong."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
