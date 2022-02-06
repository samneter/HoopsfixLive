class Season < ApplicationRecord
  has_many :season_records
  has_and_belongs_to_many :competitions, through: :season_records
  has_many :teams, through: :competitions
  has_many :games
end

