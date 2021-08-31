class RemoveColumnsFromStreams < ActiveRecord::Migration[6.1]
  def change
    remove_column :streams, :competition_id, :string
    remove_column :streams, :home_team, :string
    remove_column :streams, :away_team, :string
    remove_column :streams, :date, :date
    remove_column :streams, :tip_time, :time
    remove_column :streams, :live_stats_link, :string
  end
end
