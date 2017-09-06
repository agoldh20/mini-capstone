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
    flash[:success] = "Drone Successfully Created"
    redirect_to "/drones/#{drone.id}"
  end

  def show
    @drone = Drone.find(params[:id])
  end

  def edit
    @drone = Drone.find(params[:id])
  end

  def update
    drone = Drone.find(params[:id])

    drone.assign_attributes(
                      name: params[:name],
                      description: params[:description],
                      price: params[:price]
                      )

    drone.save
    flash[:success] = "Drone Successfully Updated"
    redirect_to "/drones/#{drone.id}"
  end

  def destroy
    drone = Drone.find(params[:id])
    drone.destroy
    flash[:danger] = "Drone #{drone.name} Successfully Killed, MUHAHAHAHAHAHAHA"
    redirect_to "/"
  end

end
