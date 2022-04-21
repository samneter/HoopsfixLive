json.extract! game, :id, :home_team, :away_team, :competition, :live_stat_url, :tip_time, :date, :stream_url, :created_at, :updated_at

json.url game_url(game, format: :json)

json.id game.id
json.image_url url_for(game.home_team.logo) if game.home_team.logo.attached?
json.image_url url_for(game.away_team.logo) if game.away_team.logo.attached?
