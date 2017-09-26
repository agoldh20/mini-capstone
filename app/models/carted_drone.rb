class CartedDrone < ApplicationRecord
  belongs_to :drone
  belongs_to :user, optional: true
  belongs_to :order, optional: true
end
