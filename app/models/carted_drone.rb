class CartedDrone < ApplicationRecord
  belongs_to :drone
  belongs_to :user
  belongs_to :order, optional: true

  
end
