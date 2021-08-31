class AddClubIdToClubs < ActiveRecord::Migration[6.1]
  def change
    add_column :clubs, :club_id, :integer
  end
end
