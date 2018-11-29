class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :food_type, :likes, :photo, :user_id

  has_many :comments
end
