class AddLastPatchSeenToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :last_patch_seen, :integer, default: 1
  end
end
