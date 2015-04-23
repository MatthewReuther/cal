require_relative 'helper'

class TestCalIntegration < Minitest::Test

# 0 args -> help message
  def test_no_arguments_help_message
    output = `./Cal.rb`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end

  def test_month_starts_on_sunday
    output = `./Cal.rb 01 2012`
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
    output = `./Cal.rb 02 2012`
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
    output = `./Cal.rb 02 2000`
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
    output = `./Cal.rb 02 2400`
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
    output = `./Cal.rb 01 2011`
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
    output = `./Cal.rb 02 2011`
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
    output = `./Cal.rb 03 2011`
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
    output = `./Cal.rb 04 2011`
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
    output = `./Cal.rb 05 2011`
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
    output = `./Cal.rb 06 2011`
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
    output = `./Cal.rb 07 2011`
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
    output = `./Cal.rb 08 2011`
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
    output = `./Cal.rb 09 2011`
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
    output = `./Cal.rb 10 2011`
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
    output = `./Cal.rb 11 2011`
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
    output = `./Cal.rb 12 2011`
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
    output = `./Cal.rb 01 1800`
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
    output = `./Cal.rb 12 3000`
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
    output = `./Cal.rb 12 1799`
    expected = <<EOS
   December 1799
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, output
  end

# Dates that are too late to input
 def test_date_to_late_to_input
    output = `./Cal.rb 01 3001`
    expected = <<EOS
    January 3001
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

#Invalid Dates to enter
  def test_invalid_date_argument_name_of_month
    output = `./Cal.rb April 2014`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end

  def test_invalid_date_argument_year_before_month
    output = `./Cal.rb 2014 04`
    expected = <<EOS
Date not in acceptable format/range.
EOS
    assert_equal expected, output
  end
end