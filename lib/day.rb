class Day
  def self.day_of_week(month, year)
    # Jan and Feb = to the 13th and 14th month of previous year
    if month == 1 or month == 2
      month += 12
      year -= 1
    end

    #Zellers Congruence Equation
    day_of_month = 1
    day_of_the_week = (day_of_month + (((month + 1) * 26)/10) + year + (year/4) + (6*((year/100))) + (year/400)) % 7
    day_of_the_week
  end
end




