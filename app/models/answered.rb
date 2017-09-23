# == Schema Information
#
# Table name: answereds
#
#  id          :integer          not null, primary key
#  pudding_id  :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Answered < ActiveRecord::Base

  belongs_to :pudding
  belongs_to :question

end
