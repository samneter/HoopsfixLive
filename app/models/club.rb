class Club < ApplicationRecord
  has_many :home_games, class_name:"Game", foreign_key: "home_club_id"
  has_many :away_games, class_name:"Game", foreign_key "away_club_id"
  has_many :streams, through: :games
  has_many :live_stats, through: :games
  has_many :memberships
  has_many :competitions, through: :memberships
  has_one_attached :logo

  #Gets all games
  def games
    self.home_games + self.away_games
  end
end
