module HolidayHelper
  def this_or_next_year(holiday)
    holiday.date <= Holiday.today ? Date.today.year+1 : Date.today.year
  end
end