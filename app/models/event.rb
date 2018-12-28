class Event < ApplicationRecord
  belongs_to :game
  belongs_to :user
  validates :location, presence: true
  validates :date, presence: true
  validates :max_player, presence: true
end
