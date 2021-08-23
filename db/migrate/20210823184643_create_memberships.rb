class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.string :competition
      t.string :club

      t.timestamps
    end
  end
end
