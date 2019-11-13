class FlatsController < ApplicationController
  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @flat.restaurant = @restaurant
    if @flat.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def flat_params
  end
end
