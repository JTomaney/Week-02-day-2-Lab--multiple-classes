require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new("James", "33")
  end

  def test_can_get_person_name
    assert_equal("James", @person.name)
  end
  
end
