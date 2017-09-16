class CreateTournamentPlayers < ActiveRecord::Migration
  def change
    create_table :tournament_players do |t|
      t.string :tournament_id
      t.string :pudding_id

      t.timestamps null: false
    end
  end
end
