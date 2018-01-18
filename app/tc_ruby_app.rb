require_relative "ruby_app"
require "minitest/autorun"
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::JUnitReporter.new

class TestPerson < MiniTest::Unit::TestCase

  def test_simple_one
    assert_equal("Arie",
                 Contact.new("Arie", "Belenky", "Givataim", "054-6504656").first_name)
  end

  def test_simple_two
    assert_equal("Gil",
                 Contact.new("Gil", "Cohen", "Tel Aviv", "054-6666666").first_name)
  end

  def test_simple_three
    assert_equal("David",
                 Contact.new("David", "Cohen", "Tel Aviv", "054-6666666").first_name)
  end

  def test_simple_four
    assert_equal("Jeff",
                 Contact.new("Jeff", "Cohen", "Tel Aviv", "054-6666666").first_name)
  end

  def test_simple_five
    assert_equal("Ben",
                 Contact.new("Ben", "Cohen", "Tel Aviv", "054-6666666").first_name)
  end

  def test_simple_six
    assert_equal("Ben",
                 Contact.new("Ben", "Cohen", "Tel Aviv", "054-6666666").first_name)
  end

end
