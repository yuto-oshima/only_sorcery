class ApplicationController < ActionController::Base

  before_action :authenticate, unless: -> { params[:controller].include? 'sessions' }

  private
    def authenticate

      unless logged_in?

        redirect_to welcome_path
      end
    end
end
