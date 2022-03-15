require 'dish'
require 'restaurant'

RSpec.describe 'Restaurant Integration' do
  it 'adds an instance from Dish class and returns it' do
    order = Restaurant.new
    first_dish = Dish.new("Fish and Chips", 7.99)
    order.add(first_dish)
    expect(order.menu).to eq [first_dish]
  end

  it 'adds multiple instances from Dish class and lists them' do
    order = Restaurant.new
    first_dish = Dish.new("Fish and Chips", 7.99)
    second_dish = Dish.new("Bangers and Mash", 9.99)
    order.add(first_dish)
    order.add(second_dish)
    expect(order.menu).to eq [first_dish, second_dish]
  end
end

