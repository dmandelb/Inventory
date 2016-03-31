class SessionsController < ApplicationController
  def new
  end

  def delete
    session.clear
    redirect_to :root
  end
end