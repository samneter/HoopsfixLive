class AddCompetitionToMemberships < ActiveRecord::Migration[6.1]
  def change
    add_reference :memberships, :competition
  end
end
