require 'dish'
require 'restaurant'
require 'itemised_receipt'

RSpec.describe 'Itemised Receipt Integration' do
  it 'allows user to a single dish from list' do
    new_order = ItemisedReceipt.new
    first_dish = Dish.new("Fish and Chips", 7.99)
    second_dish = Dish.new("Bangers and Mash", 9.99)
    third_dish = Dish.new("Waldorf Salad", 6.99)
    new_order.select_dishes(first_dish)
    expect(new_order.chosen_dishes).to eq [first_dish]
  end

  it 'allows user to select dishes from list' do
    new_order = ItemisedReceipt.new
    first_dish = Dish.new("Fish and Chips", 7.99)
    second_dish = Dish.new("Bangers and Mash", 9.99)
    third_dish = Dish.new("Waldorf Salad", 6.99)
    new_order.select_dishes(first_dish)
    new_order.select_dishes(third_dish)
    expect(new_order.chosen_dishes).to eq [first_dish, third_dish]
  end

  it 'calculates the cost of selected dishes' do
    new_order = ItemisedReceipt.new
    first_dish = Dish.new("Fish and Chips", 7.99)
    second_dish = Dish.new("Bangers and Mash", 9.99)
    third_dish = Dish.new("Waldorf Salad", 6.99)
    new_order.select_dishes(first_dish)
    new_order.select_dishes(third_dish)
    expect(new_order.calculate_total).to eq 14.98
  end
end
