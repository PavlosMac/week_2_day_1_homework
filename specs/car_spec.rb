require('minitest/autorun')
require('minitest/rg')
require_relative('../car')
require_relative('../engine')

class TestCar < MiniTest::Test

  def setup
    @car1 = Car.new(0,100)
    @turbo = Engine.new(25,10)
  end

  def test_fuel_level
    assert_equal(100, @car1.fuel_level)
  end

  def test_speed_level
    assert_equal(0, @car1.speed)
  end

  def test_acceleration
    @car1.accelerate
    assert_equal(10, @car1.speed)
    assert_equal(95, @car1.fuel_level)
  end

  def test_speed
    @car1.accelerate
    @car1.break
    assert_equal(0, @car1.speed)
  end

  def test_engine
    @car1.accelerate_with_engine(@turbo)
    assert_equal(50, @turbo.speed)
  end  


end