require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../food.rb")
class DrinkTest < MiniTest::Test
  def setup
    @drink = Drink.new("Vodka", 20, 40)
  end

  def test_get_name
    assert_equal("Vodka", @drink.name())
  end

  def test_get_price
    assert_equal(20, @drink.price())
  end

end
