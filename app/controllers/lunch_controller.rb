class LunchController < ApplicationController
  def index
    @lunches = Lunch.all
  end

  def show
    @lunch = Lunch.find params[:id]
  end

  def new
  end

  def edit
  end

  def vote
  end
end
