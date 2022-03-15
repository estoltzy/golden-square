require 'dish'

RSpec.describe Dish do
  it 'returns the name of the dish' do
    new_dish = Dish.new("Fish and Chips", 7.99)
    expect(new_dish.name).to eq "Fish and Chips"
  end

  it 'returns the price of the dish' do
    new_dish = Dish.new("Fish and Chips", 7.99)
    expect(new_dish.price).to eq 7.99
  end
end
