class User < ApplicationRecord
  has_many :restaurants
  has_many :comments

  # validates :name, :location, :fav_food, presence: true
end
