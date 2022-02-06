class Game < ApplicationRecord
  belongs_to :home_team, class_name: 'Team', foreign_key: "home_team_id"
  belongs_to :away_team, class_name: 'Team', foreign_key: "away_team_id"
  belongs_to :season, inverse_of: :game
  belongs_to :competition
  enum status: [ :unapproved, :approved ]
  extend FriendlyId
  friendly_id :home_vs_away, use: :sequentially_slugged


  def home_vs_away
    "#{home_team.name}" + " vs " + "#{away_team.name}"
  end

  def tip_time
    "#{self[:tip_time].to_s[0..1]}:#{self[:tip_time].to_s[2..-1]}".to_time
  end

  def formatted_tip_time
    tip_time.strftime('%H:%M')
  end

  # List both teams as array
  def teams
    [home_team, away_team]
  end

  def is_live?
    start_time = "#{date} #{formatted_tip_time}".to_time
    Time.zone.now.between?(start_time, start_time + 105.minutes)
  end

end
