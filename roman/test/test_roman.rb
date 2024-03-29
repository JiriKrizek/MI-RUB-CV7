require_relative '../lib/roman'
require 'test/unit'
class TestRoman < MiniTest::Unit::TestCase
  def test_simple
    assert_equal("ii", Roman.new(2).to_s)
    assert_equal("iii", Roman.new(3).to_s)
    assert_equal("iv", Roman.new(4).to_s)
    assert_equal("ix", Roman.new(9).to_s)
  end

  def test_extremes
    assert_equal("i", Roman.new(1).to_s)
    assert_equal("mcmxcix", Roman.new(4999).to_s)
  end

  def test_init
    assert_raises RuntimeError do
      Roman.new(5000)
    end
  end
end