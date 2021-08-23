json.extract! live_stat, :id, :url, :created_at, :updated_at
json.url live_stat_url(live_stat, format: :json)
