class CreateLiveStats < ActiveRecord::Migration[6.1]
  def change
    create_table :live_stats do |t|
      t.string :live_stats_url

      t.timestamps
    end
  end
end
