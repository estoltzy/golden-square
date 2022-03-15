class ItemisedReceipt
  def initialize
    @chosen_dishes = []
  end
  
  def select_dishes(dish_choice)
    @chosen_dishes << dish_choice # dish_choice is instance of Dish class
  end

  def calculate_total
    total = 0
    @chosen_dishes.each |dish| do
    total += dish.price
    end
    return total
  end

  def chosen_dishes
    return @chosen_dishes
  end

  def delivery_estimate
  # outputs confirmation message with estimated delivery time
  end
end