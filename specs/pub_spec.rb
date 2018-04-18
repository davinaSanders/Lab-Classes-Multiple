require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../food.rb")
class PubTest < MiniTest::Test
  def setup
    @customer1 = Customer.new("Davina", 100, 28, 0)
    @customer3 = Customer.new("Luis", 20, 24, 100)
    @customer2 = Customer.new("Ruairidh", 200, 14, 10)
    @drink1 = Drink.new("Beer", 2, 5)
    @drink2 = Drink.new("Wine", 3, 10)
    @pub = Pub.new("Pub", 100, [@drink1, @drink2])
  end


def test_pub_has_name
  assert_equal("Pub", @pub.name())
end

def test_sell_drink
  @pub.sell_drink(@drink2)
  assert_equal(103, @pub.till())
end

def test_take_from_customer
  @pub.take_from_customer_give_to_till(@customer1, @drink2)
  assert_equal(103, @pub.till())
  assert_equal(97, @customer1.wallet())
end

def test_take_from_customer__underage
  @pub.take_from_customer_give_to_till(@customer2, @drink2)
  assert_equal(100, @pub.till())
  assert_equal(200, @customer2.wallet())
end

def test_take_from_customer__toodrunk
  @pub.take_from_customer_give_to_till(@customer3, @drink2)
  assert_equal(100, @pub.till())
  assert_equal(20, @customer3.wallet())
end

end
