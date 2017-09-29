class CartedDrone < ApplicationRecord
  belongs_to :drone
  belongs_to :user
  belongs_to :order, optional: true

  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :quantity, numericality: {  greater_than: 0 }

  def subtotal
    drone.price * quantity
  end

  
end
