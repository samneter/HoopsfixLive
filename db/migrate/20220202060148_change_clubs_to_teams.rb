class ChangeClubsToTeams < ActiveRecord::Migration[6.1]
  def change
    rename_table :clubs, :teams
  end
end
