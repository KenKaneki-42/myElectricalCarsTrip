class Owner::CarsController < ApplicationController
  # before_action :set_Owner, only: %i[new create]

  def new
    # @owner = User.find(params[:id])
    @owner = current_user
    @car = Car.new
    # raise
    # No route matches [POST] "/cars" jveux aller pour [POST] "owner/cars"
  end

  def index
    @cars = Car.where(owner: current_user)
  end

  # def create
  #   # @owner = Owner.find(params[:id])
  #   # @owner = User.find(params[:id])
  #   @owner = current_user
  #   @car = Car.new(car_params)
  #   @car.owner = @owner # id pour foreign key
  #   if @car.save
  #     redirect_to cars_path
  #     # owner/cars_path(@owner)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  private

  def car_params
    params.require(:car).permit(:autonomy, :description, :brand, :model, :daily_price)
  end

  # def set_owner
  #   @owner = Owner.find(params[:id])
  # end

end
