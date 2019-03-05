require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class TestPerson < MiniTest::Test
  def setup
    @person = Person.new(33, "Bob")
  end

  def test_person_age
    assert_equal(33, @person.age)
  end

  def test_person_name
    assert_equal("Bob", @person.name)
  end

end
