class CreateCalendarNumbers < ActiveRecord::Migration
  def change
    create_table :calendar_numbers do |t|
      t.string :numbers
      t.integer :pudding_id

      t.timestamps null: false
    end
  end
end
