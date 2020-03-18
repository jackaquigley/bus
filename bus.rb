class Bus

  attr_reader :route, :location

  def initialize(route, location)
    @route = route
    @location = location
  end

  def bus_noise
    return "Vroom. Vroom."
  end

end
