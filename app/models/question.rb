# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  text           :string
#  answer         :string
#  date_available :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  resource       :string
#  path_name      :string
#

class Question < ActiveRecord::Base

  has_many :answered
  has_many :puddings, through: :answered

  def available
    date_available < DateTime.now
  end

end
