class Season < ApplicationRecord
  has_many :competitions, inverse_of: :season
  has_many :teams, through: :competitions
  has_many :games, through: :competitions
end

