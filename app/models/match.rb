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

  scope :by_place, -> (place) {where(place: place)}

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
      "tie"
    end
  end

  def self.match_outcome_on_place(pudding, place)
    pudding_score = 0
    oponent_score = 0
    Match.by_place(place).each do |match|
      match.results.each do |result|
        if result.pudding_id == pudding.id
          pudding_score = pudding_score + result.points
        else
          oponent_score = oponent_score + result.points
        end
      end
    end
    if pudding_score > oponent_score
      "winning"
    elsif pudding_score < oponent_score
      "losing"
    else
      "tie"
    end
  end

  def self.pudding_points_by_place(pudding, place)
    points = 0
    self.where(place: place).each do |match|
      points += match.results.find_by(pudding_id: pudding.id).points
    end
    points
  end

end
