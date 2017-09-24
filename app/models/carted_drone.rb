class CartedDrone < ApplicationRecord
  belongs_to :drones
  belongs_to :user, optional: true
  belongs_to :orders, optional: true
end
