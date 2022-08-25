class Owner::RentalsController < ApplicationController

  def index
    @current_user = Rental.find(current_user.id)
    @rentals = @current_user.car.rentals
    
  end
end
