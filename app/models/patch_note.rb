class PatchNote < ActiveRecord::Base

  validates_presence_of :version, :description

end
