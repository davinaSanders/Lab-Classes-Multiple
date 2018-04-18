require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../food.rb")
class CustomerTest < MiniTest::Test
  def setup
    @drink1 = Drink.new("Beer", 2, 5)
    @drink2 = Drink.new("Wine", 3, 10)
    @food1 = Food.new("A Potato", 20, 30)
    @customer = Customer.new("Davina", 100, 28, 0)
    @customer3 = Customer.new("Luis", 20, 24, 100)
  end

  def test_get_name
    assert_equal("Davina", @customer.name())
  end

  def test_get_wallet
    assert_equal(100, @customer.wallet())
  end

  def test_buy_drink
    @customer.buy_drink(@drink1)
    assert_equal(98, @customer.wallet())
    assert_equal(5, @customer.drunk_level())
  end

  def test_buy_food
    @customer3.buy_food(@food1)
    assert_equal(0, @customer3.wallet())
    assert_equal(70, @customer3.drunk_level())
  end

end
