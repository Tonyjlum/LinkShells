class Game < ApplicationRecord
  has_many :ownerships
  has_many :users, through: :ownerships
  has_many :events

  def self.sort_by_name
    Game.all.sort_by{ |game| game.name}
  end

  def game_name_platform
    "#{name} [#{platform}]"
  end

  def open_events
    events.all.select {|e| !e.full?}
  end

  def random_three_open_events
    open_events.sample(3).sort
  end

end
