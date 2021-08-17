class CreateStreams < ActiveRecord::Migration[6.1]
  def change
    create_table :streams do |t|
      t.string :competition
      t.string :home_team
      t.string :away_team
      t.date :date
      t.time :tip_time
      t.string :stream_link
      t.string :live_stats_link

      t.timestamps
    end
  end
end
