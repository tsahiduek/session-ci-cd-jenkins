require_relative "ruby_app"
require "test/unit"

class TestPerson < Test::Unit::TestCase

  def test_simple
    assert_equal(4, Person.new("Elmo", 4).age )
    assert_equal(7, Person.new("Zoe", 7).age )
  end

end
