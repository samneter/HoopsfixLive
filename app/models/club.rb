# frozen_string_literal: true

class Club < ApplicationRecord
  has_many :teams
  has_many :competitions, through: :teams
  has_many :away_games, through: :teams, foreign_key: 'away_team_id'
  has_many :home_games, through: :teams, foreign_key: 'home_team_id'
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged

  def games
    away_games + home_games
  end
end
