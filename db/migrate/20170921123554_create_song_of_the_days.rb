class CreateSongOfTheDays < ActiveRecord::Migration
  def change
    create_table :song_of_the_days do |t|
      t.integer :song_id
      t.date :of_the_day

      t.timestamps null: false
    end
  end
end
