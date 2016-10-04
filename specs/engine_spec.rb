require('minitest/autorun')
require('minitest/rg')
require_relative('../engine')

class TestEngine < MiniTest::Test

  def setup
    @turbo = Engine.new(0, 100)
  end

  def test_engine_speed
    assert_equal(0, @turbo.speed)
  end

  def test_engine_fuel
    assert_equal(100, @turbo.fuel_level)
  end

end