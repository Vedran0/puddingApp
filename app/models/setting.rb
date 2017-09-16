# == Schema Information
#
# Table name: settings
#
#  id            :integer          not null, primary key
#  pudding_id    :integer
#  background    :string           default("default")
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  post_it_color :string           default("default")
#

class Setting < ActiveRecord::Base
  belongs_to :pudding
end
