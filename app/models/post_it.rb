# == Schema Information
#
# Table name: post_its
#
#  id         :integer          not null, primary key
#  pudding_id :integer
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PostIt < ActiveRecord::Base
  belongs_to :pudding

  validates_presence_of :message

  # def check_message
  #   if message.length < 37
  #     if message.split("\n").map{ |x| x.length < 13 }.include?(false)
  #       puts "false"
  #       errors.add(:message, 'error message')
  #     else
  #      true
  #     end
  #   else
  #     errors.add(:message, 'error message')
  #   end
  # end

end
