require('minitest/autorun')
require('minitest/rg')
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusTest < MiniTest::Test

  def setup
    @person1 = Person.new("Jon", "27")
    @person2 = Person.new("James", "33")
    @bus_stop1 = BusStop.new("Pitlessie")
    @bus_stop1.add_person_to_queue(@person1)
    @bus_stop1.add_person_to_queue(@person2)
    @bus1 = Bus.new(54, "Glenrothes")
  end

  def test_can_get_bus_route
    assert_equal(54, @bus1.route)
  end

  def test_drive_returns_string
    assert_equal("Brum brum", @bus1.drive)
  end

  def test_can_get_bus_passengers
    assert_equal(0, @bus1.count_passengers)
  end

  def test_can_add_passenger_to_bus
    @bus1.add_passenger(@person1)
    assert_equal(1, @bus1.count_passengers)
  end

  def test_can_remove_passenger_from_bus
    @bus1.add_passenger(@person1)
    @bus1.remove_passenger(@person1)
    assert_equal(0, @bus1.count_passengers)
  end

  def test_can_remove_all_passengers
    @bus1.add_passenger(@person2)
    @bus1.add_passenger(@person1)
    @bus1.remove_all_passengers
    assert_equal(0, @bus1.count_passengers)
  end

  def test_bus_can_pick_up_all_passengers
    @bus1.pick_up_from_stop(@bus_stop1)
    assert_equal(2, @bus1.count_passengers)
    assert_equal(0, @bus_stop1.queue.count)
  end

end
