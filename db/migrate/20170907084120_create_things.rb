class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :description
      t.string :image
      t.boolean :done, default: false
      t.integer :achievement_heaviness
      t.datetime :done_date

      t.timestamps null: false
    end
  end
end
