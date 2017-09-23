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

require 'test_helper'

class AnsweredTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
