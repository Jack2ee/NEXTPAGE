class ApplicationController < ActionController::Base
<<<<<<< HEAD
  protect_from_forgery with: :exception
=======
  #protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate
      redirect_to new_session_path unless user_signed_in?
  end

  def authenticate_admin
    unless current_user.admin
      flash[:alert] = 'no admin'
      redirect_to '/index'
    end 
  end
>>>>>>> e02ea04f6731c624e3ab7c6055902494e904ccca
end
