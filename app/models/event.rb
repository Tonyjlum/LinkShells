class Event < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :confirms, :dependent => :destroy
  has_many :users, through: :confirms

  validates :location, presence: true
  validates :date, presence: true
  validates :max_player, presence: true

  def full?
    self.users.count >= self.max_player
  end

  def full_message
    self.full? ? "Full" : "Open"
  end

  def self.index_events
    Event.all.select {|e| !e.full?}.shuffle[0..14].sort_by {|e| e.date}
  end

  def sorted_users
    self.users.sort_by {|u|u.username}
  end

  def self.open_events
    Event.all.select {|e| !e.full?}
  end

  def self.sort_by_date
    Event.all.sort_by {|e|e.date}
  end


end
