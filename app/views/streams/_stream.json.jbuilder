json.extract! stream, :id, :competition, :home_team, :away_team, :date, :tip_time, :stream_link, :live_stats_link, :created_at, :updated_at
json.url stream_url(stream, format: :json)
