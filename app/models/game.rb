class Game < ApplicationRecord
  belongs_to :home_club, class_name: 'Club', foreign_key: "home_club_id"
  belongs_to :away_club, class_name: 'Club', foreign_key: "away_club_id"
  belongs_to :competition
  enum status: [ :unapproved, :approved ]
  extend FriendlyId
  friendly_id :home_vs_away, use: :sequentially_slugged

  def home_vs_away
    "#{home_club.name}" + " vs " + "#{away_club.name}"
  end

  def tip_time
    "#{self[:tip_time].to_s[0..1]}:#{self[:tip_time].to_s[2..-1]}".to_time
  end

  def formatted_tip_time
    tip_time.strftime('%H:%M')
  end

  # List both clubs as array
  def clubs
    [home_club, away_club]
  end

  def is_live?
    start_time = "#{date} #{formatted_tip_time}".to_time
    Time.zone.now.between?(start_time, start_time + 105.minutes)
  end


end
