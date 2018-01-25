# == Schema Information
#
# Table name: holidays
#
#  id         :integer          not null, primary key
#  date       :date
#  name       :string
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Holiday < ActiveRecord::Base

  validates_presence_of :name, :message, :date
  validates_length_of :name, :maximum => 15

end
