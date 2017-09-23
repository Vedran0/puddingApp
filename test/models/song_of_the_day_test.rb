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

require 'test_helper'

class SongOfTheDayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
