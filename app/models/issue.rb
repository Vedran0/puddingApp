# == Schema Information
#
# Table name: issues
#
#  id         :integer          not null, primary key
#  text       :string
#  resolved   :boolean          default(FALSE)
#  pudding_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Issue < ActiveRecord::Base
  belongs_to :pudding
end
