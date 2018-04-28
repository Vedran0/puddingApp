class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :text
      t.boolean :resolved, default: false
      t.integer :pudding_id

      t.timestamps null: false
    end
  end
end
