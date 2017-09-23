class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :answer
      t.datetime :date_available

      t.timestamps null: false
    end
  end
end