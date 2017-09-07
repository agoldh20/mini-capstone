class Drone < ApplicationRecord
  def sale_message
    return "Discounted Item!" if price < 2
    return "Everyday Value!" if price > 2
  end

  def tax
    tax = price * 0.09
  end

  def total_price
    total_price = price + tax
  end
end
