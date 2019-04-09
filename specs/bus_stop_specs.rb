require('minitest/autorun')
require('minitest/rg')
require_relative("../bus_stop.rb")
require_relative("../person.rb")

class BusStopTest < MiniTest::Test

  def setup
    @person1 = Person.new("Mat", "32")
    @bus_stop1 = BusStop.new("Cupar")
  end

  def test_bus_stop_has_name
    assert_equal("Cupar", @bus_stop1.name)
  end

  def test_add_person_to_queue
    @bus_stop1.add_person_to_queue(@person1)
    assert_equal(1, @bus_stop1.queue.count)
  end



end
