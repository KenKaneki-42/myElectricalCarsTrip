class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @rental = Rental.new
  end

  def new
    @car = Car.new
  end


end
