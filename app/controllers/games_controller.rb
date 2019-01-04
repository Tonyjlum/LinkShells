class GamesController < ApplicationController

  def index
    @games = Game.sort_by_name
  end

  def show
    @game = Game.find(params[:id])
  end
end
