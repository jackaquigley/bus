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

end

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new("Jack", "25")
  end

  def test_person_name
    assert_equal("Jack", @person.name)
  end

end
