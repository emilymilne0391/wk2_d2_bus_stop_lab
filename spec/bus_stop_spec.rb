require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop_lab')
require_relative('../person')

class TestBus < Minitest::Test
  def setup
    @bus = Bus.new(666, "Hell")
  end

  def test_route_number
    assert_equal(true, @bus.route_number > 0)
  end

  def test_destination
    assert_equal("Hell", @bus.destination)
  end

  def test_drive
    assert_equal("Brum Brum", @bus.drive)
  end

  def test_get_passenger_count
    assert_equal(0, @bus.get_passenger_count)
  end

  def test_pick_up_passenger
    @bus.pick_up_passenger(Person.new(32, "Jim"))
    assert_equal(1, @bus.get_passenger_count)
  end

    def test_drop_off_passenger
      susie = Person.new(12, "Susie")
      @bus.pick_up_passenger(susie)
      assert_equal(1, @bus.get_passenger_count)
      @bus.drop_off_passenger(susie)
      assert_equal(0, @bus.get_passenger_count)
      # @bus.pick_up_passenger(susie)
      # assert_equal(susie, @bus.drop_off_passenger(susie))
    end

    def test_empty_bus
      emily = Person.new(27, "Emily")
      stephen = Person.new(26, "Stephen")
      @bus.pick_up_passenger(stephen)
      assert_equal(1, @bus.get_passenger_count)
      @bus.pick_up_passenger(emily)
      assert_equal(2, @bus.get_passenger_count)
      @bus.empty_bus
      assert_equal(0, @bus.get_passenger_count)
    end
end
