class Game < ApplicationRecord
  belongs_to :home_club, class_name:"Club"
  belongs_to :away_club, class_name:"Club"
  belongs_to :competition
  has_one :stream
  has_one :live_stat
end
