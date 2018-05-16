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

  def self.today?
    self.find_by(of_the_day: DateTime.now.to_date) ? true : false
  end

  def self.draw
    todays_song = self.new(of_the_day: DateTime.now.to_date)
    song = Song.all.shuffle.shuffle.sample
    todays_song.song_id = song.id
    todays_song.save
  end

  def page(order = :id, per_page = 2)
    position = SongOfTheDay.order(of_the_day: :desc).where("#{order} >= ?", self.send(order)).count
    (position.to_f/per_page).ceil
  end

end
