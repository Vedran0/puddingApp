class AddChristmasSongSolvedToSetting < ActiveRecord::Migration
  def change
    add_column :settings, :christmas_song_solved, :boolean
  end
end
