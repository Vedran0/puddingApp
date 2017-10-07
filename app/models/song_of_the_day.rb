# == Schema Information
#
# Table name: song_of_the_days
#
#  id         :integer          not null, primary key
#  song_id    :integer
#  of_the_day :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SongOfTheDay < ActiveRecord::Base

  belongs_to :song

# scope :today, -> {find_by(of_the_day: DateTime.now.to_date)}

  def self.today
    todays_song = self.find_or_initialize_by(of_the_day: DateTime.now.to_date)
    if todays_song.new_record?
      song = Song.random.first
      todays_song.song_id = song.id
      todays_song.save
    else
      song = todays_song.song
    end
    song
  end

  def page(order = :id, per_page = 2)
    position = SongOfTheDay.order(of_the_day: :desc).where("#{order} >= ?", self.send(order)).count
    (position.to_f/per_page).ceil
  end

end
