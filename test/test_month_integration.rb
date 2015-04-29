require_relative 'helper'

class TestMonthIntegration < Minitest::Test

# 0 args -> help message
  def test_no_arguments_help_message
    skip
    output = `./cal.rb`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end

  def test_month_starts_on_sunday
    skip
    output = `./cal.rb 01 2012`
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, output
  end

  def test_regular_leap_year
    skip
    output = `./cal.rb 02 2012`
    expected = <<EOS
   February 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29

EOS
    assert_equal expected, output
  end

  def test_century_leap_year
    skip
    output = `./cal.rb 02 2000`
    expected = <<EOS
   February 2000
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal expected, output
  end

 def test_400_leap_year
    skip
    output = `./cal.rb 02 2400`
    expected = <<EOS
   February 2400
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29

EOS
    assert_equal expected, output
  end

# Test One for Each Month
 def test_month_of_january
    skip
    output = `./cal.rb 01 2011`
    expected = <<EOS
    January 2011
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31

EOS
    assert_equal expected, output
  end

 def test_month_of_feburary
    skip
    output = `./cal.rb 02 2011`
    expected = <<EOS
   February 2011
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28

EOS
    assert_equal expected, output
  end

 def test_month_of_march
    skip
    output = `./cal.rb 03 2011`
    expected = <<EOS
     March 2011
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
    assert_equal expected, output
  end

 def test_month_of_april
    skip
    output = `./cal.rb 04 2011`
    expected = <<EOS
     April 2011
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30

EOS
    assert_equal expected, output
  end

 def test_month_of_may
    skip
    output = `./cal.rb 05 2011`
    expected = <<EOS
      May 2011
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, output
  end

 def test_month_of_june
    skip
    output = `./cal.rb 06 2011`
    expected = <<EOS
     June 2011
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30

EOS
    assert_equal expected, output
  end

 def test_month_of_july
    skip
    output = `./cal.rb 07 2011`
    expected = <<EOS
     July 2011
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31

EOS
    assert_equal expected, output
  end

 def test_month_of_august
    skip
    output = `./cal.rb 08 2011`
    expected = <<EOS
    August 2011
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end

 def test_month_of_september
    skip
    output = `./cal.rb 09 2011`
    expected = <<EOS
   September 2011
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30

EOS
    assert_equal expected, output
  end

 def test_month_of_october
    skip
    output = `./cal.rb 10 2011`
    expected = <<EOS
    October 2011
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31

EOS
    assert_equal expected, output
  end

 def test_month_of_november
    skip
    output = `./cal.rb 11 2011`
    expected = <<EOS
   November 2011
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30

EOS
    assert_equal expected, output
  end

 def test_month_of_december
    skip
    output = `./cal.rb 12 2011`
    expected = <<EOS
   December 2011
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

# Minimum Month and Year
 def test_minium_month_and_year_to_input
    skip
    output = `./cal.rb 01 1800`
    expected = <<EOS
    January 1800
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

# Maximum Month and Year
 def test_maximum_month_and_year_to_input
    skip
    output = `./cal.rb 12 3000`
    expected = <<EOS
   December 3000
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, output
  end

# Dates that are too early to input
 def test_date_to_early_to_input
    skip
    output = `./cal.rb 12 1799`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end


# Dates that are too late to input
 def test_date_to_late_to_input
    skip
    output = `./cal.rb 01 3001`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end


#Invalid Dates to enter
  def test_invalid_date_argument_name_of_month
      skip
    output = `./cal.rb April 2014`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end

  def test_invalid_date_argument_year_before_month
      skip
    output = `./cal.rb 2014 04`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end
end