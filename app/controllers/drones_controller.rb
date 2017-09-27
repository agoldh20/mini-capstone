class DronesController < ApplicationController
  def index
    before_action :authenticate_admin!, except: [:index, :show]

    @drones = Drone.all

    sort_attribute = params[:sort]
    desc_attribute = params[:desc]
    discount_amount = params[:discount]

    category_attribute = params[:category_name]

    if category_attribute
      @drones = Category.find_by(name: category_attribute).drones

    end

    if sort_attribute
      @drones = @drones.order(sort_attribute)
    elsif desc_attribute
      @drones = @drones.order(desc_attribute => :desc)
    end

    if discount_amount
      @drones = @drones.where("price < ?", discount_amount)
    end
  end

  

  def new
    
  end

  def create
    drone = Drone.new(name: params[:name],
                      description: params[:description],
                      price: params[:price],
                      supplier_id: params[:supplier_id])
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
