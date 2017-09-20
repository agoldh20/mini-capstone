class DroneCategory < ApplicationRecord
  belongs_to :drone
  belongs_to :category
end
