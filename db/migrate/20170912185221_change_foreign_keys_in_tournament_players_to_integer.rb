class ChangeForeignKeysInTournamentPlayersToInteger < ActiveRecord::Migration
  def change
    change_column :tournament_players, :pudding_id, 'integer USING CAST(pudding_id AS integer)'
    change_column :tournament_players, :tournament_id, 'integer USING CAST(tournament_id AS integer)'
  end
end
