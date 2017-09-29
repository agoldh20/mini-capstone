class CartedDronesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user && current_user.current_cart.any?
      @carted_drones = current_user.current_cart
    else
      flash[:warning] = "You have an empty cart, whats wrong with you? Are you feeling ok?"
      redirect_to '/'
    end
  end
  
  def create
    carted_drones = CartedDrone.new(
                            user_id: current_user.id,
                            drone_id:  params[:drone_id],
                            quantity: params[:quantity],
                            status: "carted"
                            )

    carted_drones.save
    flash[:success] = "Drone(s) added to Cart"
    redirect_to "/cart"
  end

  def destroy
    carted_drone = CartedDrone.find(params[:id])
    carted_drone.update(status: "removed")
    flash[:success] = "Drone Removed from Cart"
    redirect_to '/cart'
  end

end
