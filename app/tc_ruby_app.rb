require_relative "ruby_app"
require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::JUnitReporter.new

class TestPerson < MiniTest::Unit::TestCase

  def test_simple
    assert_equal("Arie",
                 Contact.new("Arie", "Belenky", "Givataim", "054-6504656").first_name)
    assert_equal("Gil",
                 Contact.new("Gil", "Cohen", "Tel Aviv", "054-6666666").first_name)
  end

end
