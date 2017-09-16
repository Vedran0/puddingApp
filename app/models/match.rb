# == Schema Information
#
# Table name: matches
#
#  id            :integer          not null, primary key
#  place         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  tournament_id :integer
#

class Match < ActiveRecord::Base
  belongs_to :tournament
  has_many :results, dependent: :destroy
  has_many :puddings, through: :tournament
  accepts_nested_attributes_for :results

  validates_presence_of :place

  def match_outcome(pudding)
    pudding_score = results.find_by(pudding_id: pudding.id).points
    points_sum = 0.0
    results.each do |result|
      points_sum += result.points
    end
    points_sum = points_sum/2
    if pudding_score > points_sum
      "winning"
    elsif pudding_score < points_sum
      "losing"
    else
      ""
    end
  end

end
