class OrdersController < ApplicationController
  def new
    
  end

  def create
    # drone = Drone.find(params[:drone_id])
    
    order = Order.new(
                      user_id: current_user.id,
                      drone_id: params[:drone_id],
                      quantity: params[:quantity]
                      )
    
    order.calculate_totals

    order.save
    flash[:success] = "Your drone has been ordered"
    redirect_to "/orders/#{order.id}"

  end

  def show
    @order = Order.find(params[:id])
  end
end
