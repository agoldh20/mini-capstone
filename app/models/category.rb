class Category < ApplicationRecord
  has_many :drone_categories
  has_many :drones, through: :drone_categories

  validates :name, uniqueness: true
end
