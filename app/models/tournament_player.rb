# == Schema Information
#
# Table name: tournament_players
#
#  id            :integer          not null, primary key
#  tournament_id :integer
#  pudding_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class TournamentPlayer < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :pudding
end
