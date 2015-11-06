class RestaurantsController < ApplicationController


  def restaurant_params
    params.require(:restaurant).permit(:picture)
  end

  def index
    @restaurants = Restaurant.all
    @restaurants = Restaurant.all.page(params[:page]).per(18)
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
      params.require(:restaurant).permit(:name, :description, :price, :picture, :picture_2, :street_number, :street_name, :city, :country, :postcode, :monday_open, :moday_close, :tuesday_open, :tuesday_close, :wednesday_open, :wednesday_close, :thursday_open, :thursday_close, :friday_open, :friday_close, :saturday_open, :saturday_close, :sunday_open, :sunday_close, :latitude, :longitude, :address, :picture_uploader)
    end



end
