class CreateClubs < ActiveRecord::Migration[6.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :website
      t.string :youtube
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :tiktok
      t.timestamps
    end
  end
end
