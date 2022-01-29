class SeasonRecord < ApplicationRecord
  belongs_to :season
  belongs_to :competition
end
