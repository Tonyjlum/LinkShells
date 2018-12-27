class User < ApplicationRecord
  has_many :ownerships
  has_many :games, through: :ownerships
  has_many :events

  validates :email, :username, uniqueness: true
  validates :profile_img, presence: true
  validates :email, :password, length: { minimum: 5 }
  validates :age, numericality: { greater_than_or_equal_to: 18 }

  def games_by_name
    self.games.sort_by{|g| g.name}
  end

end
