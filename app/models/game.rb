class Game < ApplicationRecord
  belongs_to :home_club, class_name: 'Club', foreign_key: "home_club_id"
  belongs_to :away_club, class_name: 'Club', foreign_key: "away_club_id"
  belongs_to :competition
  enum status: [ :unapproved, :approved ]

  # List both clubs as array
  def clubs
    [home_club, away_club]
  end

  def is_live?
    is_live_at?(Time.now)
  end

  def is_live_at?(time)
    time.between?(self.tip_time, self.tip_time + 105.minutes)
  end


end
