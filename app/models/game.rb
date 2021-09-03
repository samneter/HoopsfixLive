class Game < ApplicationRecord
  belongs_to :home_club, class_name:"Club"
  belongs_to :away_club, class_name:"Club"
  belongs_to :competition
  has_one :stream, :dependent => :destroy
  has_one :live_stat, :dependent => :destroy
end
