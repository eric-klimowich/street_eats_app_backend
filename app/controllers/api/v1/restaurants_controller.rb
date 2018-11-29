class Api::V1::RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:update]

  def index
    @restaurant = Restaurant.all
    render json: @restaurant
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.valid?
      render json: @restaurant, status: :accepted
    else
      render json: { errors: @restaurant.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    if @restaurant.update(restaurant_params)
      render json: @restaurant, status: :accepted
    else
      render json: { errors: @restaurant.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def restaurant_params
    params.permit(:name, :location, :food_type, :likes, :photo, :user_id)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
