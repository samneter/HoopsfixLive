json.extract! game, :id, :home_team, :away_team, :competition, :live_stats, :tip_time, :date, :stream, :created_at, :updated_at
json.url game_url(game, format: :json)
