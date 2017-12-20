class DronesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @drones = Drone.all

    sort_attribute = params[:sort]
    desc_attribute = params[:desc]
    discount_amount = params[:discount]
    category_attribute = params[:category_name]
    search_term = params[:search_term]

    if search_term
      @drones = Drone.where("name iLIKE ? OR description iLIKE ?", "%#{search_term}%", "%#{search_term}%", )
    end

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
    @drone = Drone.new
    @suppliers = Supplier.all
  end

  def create
    @drone = Drone.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier_id])
    
    if @drone.save
      flash[:success] = "Drone Successfully Created"
      redirect_to "/drones/#{@drone.id}"
    else
      @suppliers = Supplier.all
      @errors = @drone.errors.full_messages
      render "new.html.erb"
    end
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
