# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist     :string
#

class Song < ActiveRecord::Base

  has_many :song_of_the_days, dependent: :destroy

  validates_presence_of :name, :url, :artist

  scope :random, -> {all.sample(1)}

  def strip_url
    stripped_url = self.url.split("watch?v=").last
    stripped_url.split("&").first
  end

  def get_lyrics
    fetcher = Lyricfy::Fetcher.new
  begin
    song_lyrics = fetcher.search(artist, name)
    song_lyrics.body("<br>")
  rescue
    "Can't find lyrics for this song"
  end
  end

  def get_artist_wiki_summary
    require 'wikipedia'
    page = Wikipedia.find( artist )
    binding.pry
    page.summary
  end

end
