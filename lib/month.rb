require_relative 'Day'
require_relative 'Year'

class Month
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
    @day = Day.day_of_week(@month, @year)
    @leap_year = Year.leap_year(@month, @year)
    @amount_of_days_in_month = amount_of_days_in_month
  end

  def name
    name = {
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
     return name[@month]
  end


  def amount_of_days_in_month
    case @month
    when 1, 3, 5 ,7, 8, 10, 12
      amount_of_days_in_month = 31
    when 4, 6, 9, 11
      amount_of_days_in_month = 30
    when 2
      if !@leap_year
        amount_of_days_in_month = 28
      else
        amount_of_days_in_month = 29
      end
    end
  end


    def days
    day = Day.day_of_week(@month, @year)
    array_of_days = (1..amount_of_days_in_month).to_a
    string = ""
    if @day.day_of_week == 0
      array_of_days.unshift("  ", "  ", "  ", "  ", "  ", "  ")
    elsif @day.day_of_week == 2
      array_of_days.unshift("  ")
    elsif @day.day_of_week == 3
      array_of_days.unshift("  ", "  ")
    elsif @day.day_of_week == 4
      array_of_days.unshift("  ", "  ", "  ")
    elsif @day.day_of_week == 5
      array_of_days.unshift("  ", "  ", "  ", "  ")
    elsif @day.day_of_week == 6
      array_of_days.unshift("  ", "  ", "  ", "  ", "  ")
    end

    array_of_days = array_of_days.map{ |x| x.to_s.rjust(2) }
      first_week = arr[0..6].join(" ")
      second_week = arr[7..13].join(" ")
      third_week = arr[14..20].join(" ")
      fourth_week = arr[21..27].join(" ")
      fifth_week = arr[28..34].join(" ")

    if day.day_of_week == 0 || @day.day_of_week == 6
      final_week = array_of_days[35..36].join(" ")
    else
      final_week = " "
    end
    string = "
      #{first_week}\n
      #{second_week}\n
      #{third_week}\n
      #{fourth_week}\n
      #{fifth_week}\n
      #{final_week}".rstrip
  end

  def header
    header = "#{month_name} #{year}".center(20).rstrip
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
#{days}
#{amount_of_days_in_month}
EOS
  end
end