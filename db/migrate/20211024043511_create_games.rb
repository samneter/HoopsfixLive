class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.date :date, null: false
      t.time :tip_time, null: false
      t.references :competition, index: true, foreign_key: true, null: false
      t.integer :home_club_id, index: true, foreign_key: true, null: false
      t.integer :away_club_id, index: true, foreign_key: true, null: false
      t.string :live_stat_url
      t.string :stream_url, null: false

      t.timestamps
    end
  end
end
