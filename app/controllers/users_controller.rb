class UsersController < ApplicationController
  before_action :require_user, only: [:show]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end