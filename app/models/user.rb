class User < ApplicationRecord
  validates :email, :username, uniqueness: true
  validates :profile_img, presence: true
  validates :email, :password, length: { minimum: 5 }
  validates :age, numericality: { greater_than_or_equal_to: 18 }

end
