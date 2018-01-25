class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.date :date
      t.string :name
      t.string :message

      t.timestamps null: false
    end
  end
end
