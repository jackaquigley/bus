require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus.rb')

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new("44", "Glasgow")
  end

  def test_bus_has_route
    assert_equal("44", @bus.route)
  end

  def test_bus_has_location
    assert_equal("Glasgow", @bus.location)
  end

  def test_bus_noise
    assert_equal("Vroom. Vroom.", @bus.bus_noise)
  end

  def test_passengers
    assert_equal(0, @bus.passengers_size)
  end

  def test_passenger_added
    @person = Person.new("Mitch", "27")
    @bus.passenger_added("Mitch")
    assert_equal(1, @bus.passengers_size)
  end

  def test_passenger_removed
    @bus = Bus.new("9", "Paisley")
    @bus.passenger_added(@person)
    @bus.passenger_added(@person2)
    @bus.passenger_removed
    assert_equal(1, @bus.passengers_size)
  end

  def test_all_removed
    @bus = Bus.new("9", "Paisley")
    @bus.passenger_added(@person)
    @bus.passenger_added(@person2)
    @bus.all_removed
    assert_equal(0, @bus.passengers_size)
  end

end

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new("Jack", "25")
    @person2 = Person.new("Mitch", "27")
  end

  def test_person_name
    assert_equal("Jack", @person.name)
  end

  def test_person_age
    assert_equal("25", @person.age)
  end

end
