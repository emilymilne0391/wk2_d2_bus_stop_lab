class Bus
  attr_reader :route_number, :destination
  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum Brum"
  end

  def get_passenger_count()
    return @passengers.length
  end

  def pick_up_passenger(person)
    @passengers.push(person)
  end

  def drop_off_passenger(person)
     @passengers.delete(person)
    # add return for Stephen's way
  end

  def empty_bus
    @passengers.clear
  end

end
