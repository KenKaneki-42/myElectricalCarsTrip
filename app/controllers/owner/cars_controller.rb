class Owner::CarsController < ApplicationController
  
  def new
    @car = Car.new
  end

end
