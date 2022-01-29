class CreateSeasonRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :season_records do |t|
      t.references :season, null: false, foreign_key: true
      t.references :competition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
