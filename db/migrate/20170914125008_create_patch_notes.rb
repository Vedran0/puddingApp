class CreatePatchNotes < ActiveRecord::Migration
  def change
    create_table :patch_notes do |t|
      t.string :version
      t.text :description

      t.timestamps null: false
    end
  end
end
