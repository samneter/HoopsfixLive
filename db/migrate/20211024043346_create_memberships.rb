class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.references :clubs, null: false, foreign_key: true, index: true
      t.references :competitions, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
