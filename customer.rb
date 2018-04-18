class Customer
  attr_reader :name, :wallet, :age, :drunk_level
  def initialize(name, wallet, age, drunk_level)
    @name = name
    @wallet = wallet
    @age = age
    @drunk_level = drunk_level
  end

  def buy_drink(drink)
    @wallet -= drink.price()
    @drunk_level += drink.alcohol_level()
  end

  def buy_food(food)
    @wallet -= food.price()
    @drunk_level -= food.rejuvenation_level()
  end


end
