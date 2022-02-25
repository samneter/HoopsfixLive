class AddClubidToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :club_id, :integer, foreign_key: true
  end
end
