class ChangeClubIdToTeamIdOnGamesMemberships < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, "home_club_id", "home_team_id"
    rename_column :games, "away_club_id", "away_team_id"
    rename_column :memberships, "club_id", "team_id"
  end
end
