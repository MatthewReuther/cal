require_relative 'Day'

class Month
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
    @day = Day.day_of_week(@month, @year)
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


  def length_of_months
    case @month
    when 1, 3, 5 ,7, 8, 10, 12
      @number_of_days_in_month = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ,15 ,16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
    when 4, 6, 9, 11
      @number_of_days_in_month = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ,15 ,16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
    end
  end

  # def number_of_days_in_month
  #   number_of_days_in_month = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ,15 ,16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
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