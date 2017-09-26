class CartedDronesController < ApplicationController
  
  def create
    cart = CartedDrone.new(
                            user_id: current_user.id,
                            drone_id:  params[:drone_id],
                            quantity: params[:quantity],
                            status: "carted"
                            )

    cart.save
    flash[:success] = "Drone(s) added to Cart"
    redirect_to "/cart"
  end

  def index
    @cart = CartedDrone.where(user_id: current_user.id, status: "carted")
  end
end
