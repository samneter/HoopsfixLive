class RenameStreamurlToStreamidInGames < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :stream_url, :stream_id
  end
end
