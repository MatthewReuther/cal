class Year

  def self.leap_year(month, year)
    if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
      return true
    elsif year % 4 == 0 && year % 100 != 0
      return true
    else
      return false
    end
  end
end
