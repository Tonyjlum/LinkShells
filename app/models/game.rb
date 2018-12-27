class Game < ApplicationRecord
  has_many :ownerships
  has_many :users, through: :ownerships
  has_many :events

  def self.sort_by_name
    Game.all.sort_by{ |game| game.name}
  end
end
