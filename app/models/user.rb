class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_drones

  validates :email, uniqueness: true

  def current_cart
    carted_drones.where(status: "carted")

  end
end
