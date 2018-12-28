class ConfirmsController < ApplicationController

  def create
    Confirm.create(user_id: session[:user_id], event_id: session[:event_id])
    @event = Event.find(session[:event_id])
    session[:event_id] = nil
    redirect_to @event
  end

  def destroy
    Confirm.find_by(event_id: session[:event_id], user_id: session[:user_id]).destroy
    @event = Event.find(session[:event_id])
    session[:event_id] = nil
    redirect_to @event
  end


end
