class ChangeStreamsCompetitionColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :streams, :competition, :competition_id
  end
end
