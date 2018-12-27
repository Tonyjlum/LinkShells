class SessionsController < ApplicationController

  def current_user
    User.find(session[:user_id])
  end

  def new
  end

  def create
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end
