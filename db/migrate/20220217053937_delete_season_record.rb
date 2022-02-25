class DeleteSeasonRecord < ActiveRecord::Migration[6.1]
  def change
    drop_table :season_records
  end
end
