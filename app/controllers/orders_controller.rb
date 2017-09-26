class OrdersController < ApplicationController
  def new
    
  end

  def create
    @cart = CartedDrone.where(user_id: current_user.id, status: "carted")
    order = Order.new(
                      user_id: current_user.id
                      )
    
    order.calculate_totals

    order.save
    
    @cart.each do |item|
      item.update(status: "ordered", order_id: order.id)
    end

    flash[:success] = "Your drone has been ordered"
    redirect_to "/orders/#{order.id}"

  end

  def show
    @order = Order.find(params[:id])
  end
end
