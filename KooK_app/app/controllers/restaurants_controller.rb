class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = current_user.restaurants.create(restaurant_params)
    if @restaurant.save
      name = @restaurant.name
      redirect_to restaurants_path
      flash[:notice] = "#{name} created"
    else
      render 'new'
      flash[:error] = "Unable to create restaurant. Please try again"
    end
  end

  def destroy
    @restaurant = current_user.restaurants.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update restaurant_params
    if @restaurant.save
      flash[:notice] = "Your restaurant was updated succesfully"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :picture, :price)
    end

end
