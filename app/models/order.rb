class Order < ApplicationRecord
  belongs_to :drone, optional: true
  belongs_to :user, optional: true
end
