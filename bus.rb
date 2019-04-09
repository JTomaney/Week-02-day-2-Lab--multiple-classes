class Bus
  def initialize(route, destination)
    @route = route
    @destination = destination
  end

  attr_reader :route, :destination

  def drive()
    return "Brum brum"
  end



end
