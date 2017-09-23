# == Schema Information
#
# Table name: patch_notes
#
#  id          :integer          not null, primary key
#  version     :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PatchNote < ActiveRecord::Base

  validates_presence_of :version, :description

end
