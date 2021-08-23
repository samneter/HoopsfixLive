class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :competition
      t.string :home_club, class_name:"Club"
      t.string :away_club, class_name:"Club"
      t.date :date
      t.time :tip_time
      t.string :live_stats_url
      t.string :stream_url

      t.timestamps
    end
  end
end
