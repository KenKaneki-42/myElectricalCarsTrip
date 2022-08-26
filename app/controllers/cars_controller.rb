class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @rental = Rental.new
    @disable_footer = true
  end

  def create
    # @owner = Owner.find(params[:id])
    # @owner = User.find(params[:id])
    @owner = current_user
    @car = Car.new(car_params)
    @car.owner = @owner # id pour foreign key
    @car.save
    if @car.save
      redirect_to owner_cars_path
    else
      # render :new, status: :unprocessable_entity
      redirect_to new_owner_car_path
    end
  end

  private

  def car_params
    params.require(:car).permit(:autonomy, :description, :brand, :model, :daily_price, :photo)
  end
end
