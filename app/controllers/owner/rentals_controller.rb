class Owner::RentalsController < ApplicationController

  def index
    @current_user = Rental.find(current_user.id)
    @rentals = @current_user.car.rentals
  end

  def validate
    rental = Rental.find(params[:id])
    if rental.update(status_change)
      redirect_to owner_rentals_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def decline
    rental = Rental.find(params[:id])
    if rental.update(status_change)
      redirect_to owner_rentals_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  def status_change
    params.require(:rental).permit(:status)
  end
end
