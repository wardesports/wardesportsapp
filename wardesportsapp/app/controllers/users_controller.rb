class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def index
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if user.save
      redirect_to current_user
    end
  end

  def update
    @user.update(user_params)
    redirect_to current_user
  end

  def edit
  end

  def destroy
    @user.destroy
  end


  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :description,
    :password_digest, :current_password, :organization_name, :address1, :address2, :city, :state, :country,
    :postalcode, :admin, :oganizer, :email, :sign_in_count, :current_sign_in_at, :last_sign_in_at)
  end
end
