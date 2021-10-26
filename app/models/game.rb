class Game < ApplicationRecord
  belongs_to :home_club, class_name: 'Club', foreign_key: "home_club_id"
  belongs_to :away_club, class_name: 'Club', foreign_key: "away_club_id"
  belongs_to :competition

  # List both clubs as array
  def clubs
    [self.home_club, self.away_club]
  end
end
