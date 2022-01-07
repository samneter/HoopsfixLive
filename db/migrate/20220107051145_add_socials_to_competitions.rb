class AddSocialsToCompetitions < ActiveRecord::Migration[6.1]
  def change
    add_column :competitions, :youtube, :string
    add_column :competitions, :facebook, :string
    add_column :competitions, :twitter, :string
    add_column :competitions, :instagram, :string
    add_column :competitions, :tiktok, :string
  end
end
