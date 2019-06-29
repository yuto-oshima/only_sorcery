class UsersController < ApplicationController

  skip_before_action :authenticate

  def new

    @user = User.new
  end

  def create

    @user = User.new(user_params)
    if @user.save!

      redirect_to root_path
    else

      redirect_back(fallback_location: new_user_path)
    end
  end

  private

  def user_params

    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
