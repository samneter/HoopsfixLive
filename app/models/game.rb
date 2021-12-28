class Game < ApplicationRecord
  belongs_to :home_club, class_name: 'Club', foreign_key: "home_club_id"
  belongs_to :away_club, class_name: 'Club', foreign_key: "away_club_id"
  belongs_to :competition
  enum status: [ :approved, :unapproved ], _default: "unapproved"
  after_initialize :set_defaults

  def set_defaults
    self.status ||= 'unapproved'
  end
  # List both clubs as array
  def clubs
    [self.home_club, self.away_club]
  end

  def is_live?
    is_live_at?(Time.now)
  end

  def is_live_at?(time)
    time.between?(self.tip_time, self.tip_time + 105.minutes)
  end


end
