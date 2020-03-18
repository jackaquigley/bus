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

end
