class Bus
  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  attr_reader :route, :destination, :passengers

  def drive()
    return "Brum brum"
  end

  def count_passengers
    return @passengers.count
  end

  def add_passenger(person)
    @passengers.push(person)
  end

  def remove_passenger(person)
    @passengers.delete(person)
  end

  def remove_all_passengers
    @passengers = []
  end

end
