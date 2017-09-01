class DronesController < ApplicationController
  def index
    @drones = Drone.all
  end

  def new
    
  end

  def create
    drone = Drone.new(name: params[:name],
                      description: params[:description],
                      price: params[:price])
    drone.save
  end

  def show
    @drone = Drone.find(params[:id])
  end

end
