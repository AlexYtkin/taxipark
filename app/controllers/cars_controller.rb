class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def edit
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(params[:car])

    if @car.save
      redirect_to cars_path
    else
      render "new"
    end
  end

  def update
    @car = Car.find(params[:id])

    if @car = Car.update(params[:car])
      redirect_to cars_path
    else
      render "edit"
    end
  end

  def destroy
    @car = Car.find(params[id])
    @cars.destroy
    redirect_to cars_path
  end

end
