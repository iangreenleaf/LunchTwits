class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find params[:id]
  end

  def index
  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end
end
