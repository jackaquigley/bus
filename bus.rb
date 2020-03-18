class Bus

  attr_reader :route, :location, :passengers

  def initialize(route, location)
    @route = route
    @location = location
    @passengers = []
  end

  def bus_noise
    return "Vroom. Vroom."
  end

  def passengers_size
    return @passengers.size
  end

  def passenger_added(person)
    @passengers.push(person)
  end

  def passenger_removed
    @passengers.pop
  end

  def all_removed
    @passengers.clear
  end

end

class Person

  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end
