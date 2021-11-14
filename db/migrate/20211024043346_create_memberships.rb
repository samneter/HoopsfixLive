class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.references :club, foreign_key: { to_table: :clubs}, null: false, index: true
      t.references :competition, foreign_key: { to_table: :competitions}, null: false,  index: true

      t.timestamps
    end
  end
end
