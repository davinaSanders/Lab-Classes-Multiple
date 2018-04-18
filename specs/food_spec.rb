require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../food.rb")
class FoodTest < MiniTest::Test

def setup
@food1 = Food.new("chips", 4, 30)
end

def test_rejuvenation_level
  assert_equal(30, @food1.rejuvenation_level())
end

def test_consume_food
  
  assert_equal()
end

end
