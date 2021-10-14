class RenameStatsPluralToSingularGames < ActiveRecord::Migration[6.1]
  def change
    rename_index :games, 'index_games_on_live_stats_id', 'index_games_on_live_stat_id'
  end
end
