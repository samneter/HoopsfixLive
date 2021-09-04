class Club < ApplicationRecord
  has_many :home_games, class_name:"Game"
  has_many :away_games, class_name:"Game"
  has_many :streams, through: :games
  has_many :live_stats, through: :games
  has_many :memberships
  has_many :competitions, through: :memberships
  has_one_attached :logo
end
