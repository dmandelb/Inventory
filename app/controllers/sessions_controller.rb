class SessionsController < ApplicationController
  skip_before_action :ensure_login
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end