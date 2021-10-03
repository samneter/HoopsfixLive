class AddMembershipReferenceToClub < ActiveRecord::Migration[6.1]
  def change
    add_reference :memberships, :club
  end
end
