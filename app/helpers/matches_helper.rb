module MatchesHelper

  def match_score_color(match, pudding)
    match.match_outcome(pudding)
  end

  def matches_by_place_score_color(pudding, place)
    Match.match_outcome_on_place(pudding, place)
  end

end


  # def self.pudding_points_by_place(pudding, place)
  #   points = 0
  #   self.where(place: place).each do |match|
  #     points += match.results.find_by(pudding_id: pudding.id).points
  #   end
  #   points
  # end