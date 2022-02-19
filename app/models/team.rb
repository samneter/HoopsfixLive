class Team < ApplicationRecord
  belongs_to :club
  has_many :home_games, class_name:"Game", foreign_key: "home_team_id"
  has_many :away_games, class_name:"Game", foreign_key: "away_team_id"
  has_many :games
  has_many :memberships
  has_many :competitions, through: :memberships
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged
  #Gets all games
  def games
    self.home_games + self.away_games
  end
end
