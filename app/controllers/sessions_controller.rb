class SessionsController < ApplicationController

  def new

    @user = User.new
  end

  def create

    @user = login(params[:name], params[:password])
    if @user

      redirect_to root_path
    else

      redirect_back(fallback_location: welcome_path)
    end
  end

  def destroy
  end
end
