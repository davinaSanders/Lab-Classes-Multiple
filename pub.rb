class Pub
  attr_reader(:name, :till, :drinks)
  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def sell_drink(drink)
    @till += drink.price()
  end

  def take_from_customer_give_to_till(customer, drink)
    if (customer.drunk_level() >= 100) || (customer.age() < 18)
      return false
    else
    sell_drink(drink)
    customer.buy_drink(drink)
  end
  end

  # def age_check(customer)
  #   if customer.age() < 18
  # end
  # def set_name(new_name)
  #   @name = (new_name)
  # end
end
