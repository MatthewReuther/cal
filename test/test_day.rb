require_relative 'helper'
require_relative '../lib/day'

class TestDay < Minitest::Test

  def test_day_of_week_saturday_for_february
    day = Day.day_of_week(2, 2003)
    assert_equal 0, day
  end

  def test_day_of_week_sunday_for_january
    day = Day.day_of_week(1, 1995)
    assert_equal 1, day
  end

  def test_day_of_week_monday
    day = Day.day_of_week(3, 1999)
    assert_equal 2, day
  end

  def test_day_of_week_wednesday
    day = Day.day_of_week(6, 2016)
    assert_equal 4, day
  end

  def test_day_of_week_wednesday
    day = Day.day_of_week(9, 1999)
    assert_equal 4, day
  end

  def test_day_of_week_friday
    day = Day.day_of_week(4, 1870)
    assert_equal 6, day
  end

  def test_day_of_week_with_leap_year
    day = Day.day_of_week(3, 2004)
    assert_equal 2, day
  end
end