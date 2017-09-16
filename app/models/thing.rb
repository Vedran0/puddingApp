# == Schema Information
#
# Table name: things
#
#  id                    :integer          not null, primary key
#  description           :string
#  image                 :string
#  done                  :boolean          default(FALSE)
#  achievement_heaviness :integer
#  done_date             :datetime
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Thing < ActiveRecord::Base
end
