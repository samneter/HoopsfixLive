class ChangeCompetitionTypeInMemberships < ActiveRecord::Migration[6.1]
  def change
    change_column :memberships, :competition, :integer
  end
end
