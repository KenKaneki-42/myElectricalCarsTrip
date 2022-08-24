class RentalsController < ApplicationController

  def create
    @rental = Rental.new(rental_params)
    raise
    @rental.car = @car # id pour foreign key
    @rental.status = "pending"
    @rental.save!
    # if @rental.save
    #   redirect_to car_path(@car)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  private

  def rental_params
    params.require(:rental).permit(:beginning_date, :ending_date, :comment)
  end

end
