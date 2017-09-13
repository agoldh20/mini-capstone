class Drone < ApplicationRecord
  belongs_to :supplier

  def sale_message
   return "Discounted Item!" if price <= 40
   return "Everyday Great Value" if price > 40
  end

  def discounted?
    price < 40
  end

  def tax
    price * 0.09
  end

  def total_price
    price + tax
  end
end
