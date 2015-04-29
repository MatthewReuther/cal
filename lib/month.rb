require_relative 'Day'
require_relative 'Year'

class Month
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
    @day = Day.day_of_week(@month, @year)
    @leap_year = Year.leap_year(@month, @year)
  end

  def name
    name_of_months = {
      0 => " ",
      1 => "January",
      2 => "February",
      3 => "March",
      4 => "April",
      5 => "May",
      6 => "June",
      7 => "July",
      8 => "August",
      9 => "September",
      10 => "October",
      11 => "November",
      12 => "December",
     }
     return name_of_months[@month]
  end


  def number_of_days_in_month


    case @month
    when 1, 3, 5 ,7, 8, 10, 12
      number_of_days_in_month = 31
    when 4, 6, 9, 11
      number_of_days_in_month = 30
    when 2
      if not @leap_year
        number_of_days_in_month = 28
      else
        number_of_days_in_month = 29
      end
    end
  end

  # def number_of_days_in_month
  #   number_of_days_in_month = (1..number_of_days_in_month)
  #   #number_of_days_in_month.each_slice(7) { |a| puts a }
  #   number_of_days_in_month.join(" ")
  # end


  def to_s
  name_of_weekdays = "Su Mo Tu We Th Fr Sa"

    <<EOS
    #{name} #{year}
#{name_of_weekdays}
#{number_of_days_in_month}

EOS
  end

end