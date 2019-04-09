require('minitest/autorun')
require('minitest/rg')
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(54, "Glenrothes")
  end

  def test_can_get_bus_route
    assert_equal(54, @bus.route)
  end

  def test_drive_returns_string
    assert_equal("Brum brum", @bus.drive)
  end

end
