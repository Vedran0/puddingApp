# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base

  has_many :song_of_the_days, dependent: :destroy

  validates_presence_of :name, :url

  scope :random, -> {all.sample(1)}

  def strip_url
    stripped_url = self.url.split("watch?v=").last
    stripped_url.split("&").first
  end

end