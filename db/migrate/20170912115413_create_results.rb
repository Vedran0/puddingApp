class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :match_id
      t.integer :pudding_id
      t.integer :points

      t.timestamps null: false
    end
  end
end
