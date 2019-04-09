class BusStop

  def initialize(name)
    @name = name
    @queue = []
  end

  attr_reader :name
  attr_accessor :queue

  def add_person_to_queue(person)
    @queue.push(person)
  end

  # def empty_queue
  #   @queue = []
  # end

end
