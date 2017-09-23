# == Schema Information
#
# Table name: results
#
#  id         :integer          not null, primary key
#  match_id   :integer
#  pudding_id :integer
#  points     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Result < ActiveRecord::Base
  belongs_to :match
  belongs_to :pudding

end
