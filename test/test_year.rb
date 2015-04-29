require_relative 'helper'
require_relative '../lib/year'

class TestYear < Minitest::Test
  def test_if_a_year_is_not_a_leap_year
    year = Year.leap_year(2, 1993)
    assert_equal false, year
  end

  def test_if_a_year_is_a_leap_year
    year = Year.leap_year(2, 2008)
    assert_equal true, year
  end

  def test_if_a_year_is_leap_year_for_century
    year = Year.leap_year(2, 1900)
    assert_equal false, year
  end

  def test_if_a_year_is_leap_year_for_millennium
    year = Year.leap_year(11, 2000)
    assert_equal true, year
  end
end