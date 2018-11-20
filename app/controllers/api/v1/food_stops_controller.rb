class Api::V1::FoodStopsController < ApplicationController
  before_action :find_food_stop, only: [:update]

  def index
    @food_stop = FoodStop.all
    render json: @food_stop
  end

  def create
    @food_stop = FoodStop.create(food_stop_params)
    if @food_stop.save
      render json: @food_stop, status: :accepted
    else
      render json: { errors: @food_stop.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @food_stop.update(food_stop_params)
    if @food_stop.save
      render json: @food_stop, status: :accepted
    else
      render json: { errors: @food_stop.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def food_stop_params
    params.permit(:name, :location, :type, :likes, :photo, :user_id)
  end

  def find_food_stop
    @food_stop = FoodStop.find(params[:id])
  end
end
