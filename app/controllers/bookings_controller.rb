class BookingsController < ApplicationController
  respond_to :html, :xml, :json
  
  before_action :find_restaurant

  def index
    @bookings = Booking.where("restaurant_id = ? AND end_time >= ?", @restaurant.id, Time.now).order(:start_time)
    respond_with @bookings
  end

  def new
    @booking = Booking.new(restaurant_id: @restaurant.id)
  end

  def create
    @booking =  Booking.new(params[:booking].permit(:restaurant_id, :start_time, :length))
    @booking.restaurant = @restaurant
    if @booking.save
      redirect_to restaurant_bookings_path(@restaurant, method: :get)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      flash[:notice] = "Booking: #{@booking.start_time.strftime('%e %b %Y %H:%M%p')} to #{@booking.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to restaurant_bookings_path(@restaurant)
    else
      render 'index'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    # @booking.restaurants = @restaurants

    if @booking.update(params[:booking].permit(:restaurant_id, :start_time, :length))
      flash[:notice] = 'Your booking was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to restaurant_bookings_path(@restaurant)
      end
    else
      render 'edit'
    end
  end

  private

  def save booking
    if @booking.save
        flash[:notice] = 'booking added'
        redirect_to restaurant_booking_path(@restaurant, @booking)
      else
        render 'new'
      end
  end

  def find_restaurant
    if params[:restaurant_id]
      @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    end
  end

end
