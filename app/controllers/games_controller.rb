class GamesController < ApplicationController

  def index
    @games = Game.all
    #show how many people own this game
  end

  def show
    @game = Game.find(params[:id])
    #show events for this game
    #show how many people own this game

  end
end
