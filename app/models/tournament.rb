# == Schema Information
#
# Table name: tournaments
#
#  id         :integer          not null, primary key
#  name       :string
#  end_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tournament < ActiveRecord::Base

  has_many :tournament_players
  has_many :puddings, through: :tournament_players

  has_many :matches, dependent: :destroy
  has_many :results, through: :matches

  validates_presence_of :name

  def active?
    end_date >= DateTime.now
  end

  def pudding_points(pudding)
    score=0
    results.where(pudding_id: pudding.id).each do |result|
      score += result.points
    end
    score
  end

  def pudding_winning
    hash = Hash[pudding_ids.map {|x| [x, 0]}]
    puddings.each do |pudding|
      hash[pudding.id] = pudding_points(pudding)
    end
    hash = hash.sort_by {|_key, value| value}
    if hash.last.last > hash[-2].last
      Pudding.find(hash.sort_by {|_key, value| value}.last.first)
    else
      ""
    end
  end

end
