class ChangeClubTypeInMemberships < ActiveRecord::Migration[6.1]
  def change
    change_column :memberships, :club, :integer
  end
end
