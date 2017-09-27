class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :carted_drones
  has_many :drones, through: :carted_drones

  def calculate_subtotal
    sum = 0
    carted_drones.each do |carted_drone|
      subtotal += carted_drone.sum
    end  
    self.subtotal = sum
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
  end
end
