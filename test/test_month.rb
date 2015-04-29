require_relative 'helper'
require_relative '../lib/month'

class TestMonth < Minitest::Test
  def test_initializing_a_month_saves_values
    m = Month.new(05, 2015)
    assert_equal 05, m.month
    assert_equal 2015, m.year
  end

#Testing Name of Months
  def test_name_for_january
    m = Month.new(01, 2009)
    assert_equal m.name, "January"
  end

  def test_name_for_march
    m = Month.new(03, 2068)
    assert_equal m.name, "March"
  end

  def test_name_for_december
    m = Month.new(12, 1962)
    assert_equal m.name, "December"
  end

#Testing Days in Month

  def test_amount_of_days_in_january
    m = Month.new(01, 2067)
    assert_equal 31, m.number_of_days_in_month
  end

  def test_amount_of_days_in_may
    m = Month.new(05, 2012)
    assert_equal 31, m.number_of_days_in_month
  end

  def test_amount_of_days_in_june
    m = Month.new(06, 1904)
    assert_equal 30, m.number_of_days_in_month
  end

    def test_amount_of_days_in_november
    m = Month.new(11, 1904)
    assert_equal 30, m.number_of_days_in_month
  end

#Testing days of February When Leap Year and Not a Leap Year
  def test_amount_of_days_in_february_during_leap_year
    m = Month.new(2, 2008)
    assert_equal(29, m.number_of_days_in_month)
  end

  def test_amount_of_days_in_february_not_during_leap_year
    m = Month.new(2, 1883)
    assert_equal(28, m.number_of_days_in_month)
  end

# Testing Format of Month Calander
  def test_to_s_on_jan_2012
    m = Month.new(01, 2012)
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, m.to_s
  end

  def test_to_s_on_jan_2017
    m = Month.new(01, 2017)
    expected = <<EOS
    January 2017
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, m.to_s
  end
end