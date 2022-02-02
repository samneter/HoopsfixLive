json.extract! game, :id, :home_team, :away_team, :competition, :live_stat_url, :tip_time, :date, :stream_url, :created_at, :updated_at

json.url game_url(game, format: :json)
