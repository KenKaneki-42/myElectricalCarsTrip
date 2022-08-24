class RentalsController < ApplicationController

  def create
    @rental = Rental.new(rental_params)
    @car = Car.find(params[:car_id])
    @rental.car = @car # id pour foreign key
    @rental.status = "pending"
    @rental.renter = current_user
    if @rental.save
      redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:beginning_date, :ending_date, :comment)
  end

end
