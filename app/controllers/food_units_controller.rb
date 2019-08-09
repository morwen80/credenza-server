class FoodUnitsController < ApplicationController
  before_action :set_foodUnit, only: [:update, :destroy]

  def index
    @foodUnits = FoodUnit.all
    render json: @foodUnits
  end

  def create
    @foodUnit = FoodUnit.new(food: params[:food], itemNumber: params[:itemNumber], list_id: params[:list_id], faved: params[:faved])
    if @foodUnit.save
      render json: @foodUnit
    else
      render json: {error: 'Unable to add food item'}, status: 400
    end
  end

  def update
    @foodUnit.update(params.permit(:food, :itemNumber, :list_id, :faved))
    render json: @foodUnit, status: 200
  end

  def show
    @foodUnit = FoodUnit.find_by(id: params[:id])
    if @foodUnit
      render json: @foodUnit
    else
      render json: {error: "Food item not found"}, status: 404
    end
  end


  def destroy
    foodItemId = @foodUnit.id
    @foodUnit.destroy
    render json: {message:"Food item deleted", foodItemId:foodItemId}
  end


  private
  def set_foodUnit
    @foodUnit = FoodUnit.find(params[:id])
  end

  end
