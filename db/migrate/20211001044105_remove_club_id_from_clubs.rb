class RemoveClubIdFromClubs < ActiveRecord::Migration[6.1]
  def change
    remove_column :clubs, :club_id
  end
end
