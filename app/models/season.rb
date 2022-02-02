class Season < ApplicationRecord
  belongs_to :competition
  has_many :season_records
  has_many :competitions, through: :season_records
  has_many :teams, through: :competitions
  has_many :games
end

