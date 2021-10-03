class AddMembershipReftoClub < ActiveRecord::Migration[6.1]
  def change
    add_reference :clubs, :memberships
  end
end
