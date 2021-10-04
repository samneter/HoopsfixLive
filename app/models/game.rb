class Game < ApplicationRecord
  belongs_to :home_club, class_name:"Club"
  belongs_to :away_club, class_name:"Club"
  belongs_to :competition
  has_one :stream, :dependent => :destroy
  has_one :live_stat, :dependent => :destroy

  # List both clubs as array
  def clubs
    [self.home_club, self.away_club]
  end
end
