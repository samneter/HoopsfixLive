class FixStreamLinkColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :streams, :stream_link, :stream_url
  end
end
