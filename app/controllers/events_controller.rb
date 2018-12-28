class EventsController < ApplicationController
  def index
    #limit 10, make a show all button
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @confirms = @event.sorted_users
  end

  def new
    if session[:user_id].nil?
      redirect_to :root
    else
      @event = Event.new
      @games = Game.sort_by_name
    end
  end

  def create
    @event = Event.create(event_params)
    if @event.valid?
      redirect_to @event
    else
      @games = Game.sort_by_name
      @errors = @event.errors.full_messages
      render :new
    end
  end

  def destroy
    Event.find(session[:event_id]).destroy
    session[:event_id] = nil
    @user = User.find(session[:user_id])
    @hostings = @user.events
    @game_list = @user.games_by_name
    @events = @user.confirms
    redirect_to @user
  end

  #search for event by game?

  def event_params
    params.require(:event).permit(:user_id, :game_id, :location, :max_player, :date)
  end
end
