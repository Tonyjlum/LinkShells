class EventsController < ApplicationController
  def index
    #limit 10, make a show all button
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    #take in all confrims for this event and list
  end

  #search for event by game?

end
