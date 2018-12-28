class ConfirmsController < ApplicationController

  def create
    Confirm.create(user_id: session[:user_id], event_id: session[:event_id])
    @event = Event.find(session[:event_id])
    session[:event_id] = nil
    redirect_to @event
  end


end
