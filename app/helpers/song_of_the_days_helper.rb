module SongOfTheDaysHelper

  def get_available_dates
    dates = []
    SongOfTheDay.all.each do |song|
      dates << song.of_the_day.strftime("%-d-%-m-%Y")
    end
    dates
  end

end
