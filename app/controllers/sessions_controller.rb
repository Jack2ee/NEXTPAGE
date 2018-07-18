class SessionsController < ApplicationController
  def new
  end

  def create
    user =User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to '/index'
    else
      flash[:alert] = 'Invalid email/password combination'
      redirect_to new_session_path
    end
  end

  def destroy
    log_out 
    redirect_to '/index'
  end
end
