class Restaurant
  def initialize # array for dishes, array for selected dishes
    @menu = [] 
  end

  def add(dish)
    @menu << dish
  end

  def menu
    return @menu
  end
end