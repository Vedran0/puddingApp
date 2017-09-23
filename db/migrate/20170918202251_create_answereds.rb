class CreateAnswereds < ActiveRecord::Migration
  def change
    create_table :answereds do |t|
      t.integer :pudding_id
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
