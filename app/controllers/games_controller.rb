class GamesController < ApplicationController

  def index
    @games = Game.sort_by_name
    #show how many people own this game
  end

  def show
    @game = Game.find(params[:id])
    #show events for this game
    #show how many people own this game

  end
end
