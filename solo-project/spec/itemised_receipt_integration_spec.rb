require 'dish'
require 'restaurant'
require 'itemised_receipt'

RSpec.describe 'Itemised Receipt Integration' do
end

# # allows user to select dishes from list 
# order = Restaurant.new
# first_dish = Dish.new("Fish and Chips", "£7.99")
# second_dish = Dish.new("Bangers and Mash", "£9.99")
# third_dish = Dish.new("Waldorf Salad", "£6.99")
# order.add(first_dish)
# order.add(second_dish)
# order.add(third_dish)
# order.select_dishes(first_dish) # -> [first_dish]

# # calculates cost of selected dishes
# order = Restaurant.new
# first_dish = Dish.new("Fish and Chips", "£7.99")
# second_dish = Dish.new("Bangers and Mash", "£9.99")
# third_dish = Dish.new("Waldorf Salad", "£6.99")
# order.add(first_dish)
# order.add(second_dish)
# order.add(third_dish)
# order.select_dishes(first_dish)
# order.calculate_receipt # -> "£7.99"

# # Write test for delivery_estimate