class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    search_restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Add !'
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    search_restaurant
  end

  def destroy
    search_restaurant
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Deleted !'
  end

  def update
    search_restaurant
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Updated !'
    else
      render :edit
    end
  end
end

  private

def search_restaurant
  @restaurant = Restaurant.find(params[:id])
end

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :category)
end
