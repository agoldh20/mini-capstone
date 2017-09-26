class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :carted_drones
  has_many :drones, through: :carted_drones


  def calculate_subtotal
    @subtotal = 0
    carted_drones.each do |item|
      @subtotal += item.drone.price * quantity
    end
  end

  def calculate_tax
    @tax = @subtotal * 0.09
  end

  def calculate_total
    @total = @subtotal + @tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
  end
end
