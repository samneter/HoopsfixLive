# frozen_string_literal: true

class Game < ApplicationRecord
  belongs_to :home_team, class_name: 'Team', foreign_key: 'home_team_id'
  belongs_to :away_team, class_name: 'Team', foreign_key: 'away_team_id'
  belongs_to :competition
  enum status: %w[unapproved approved]
  extend FriendlyId
  friendly_id :home_vs_away, use: :sequentially_slugged

  scope :from_team, ->(team) { where(home_team: team).or(where(away_team: team)) }
  scope :from_competition, ->(competition) { where(competition: competition) }
  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }

  def home_vs_away
    [home_team.decorated_name, away_team.decorated_name].join(' vs ')
  end

  def tip_time
    "#{self[:tip_time].to_s[0..1]}:#{self[:tip_time].to_s[2..-1]}".to_time
  end

  def formatted_tip_time
    tip_time.strftime('%H:%M')
  end

  def teams
    [home_team, away_team]
  end

  def is_live?
    start_time = "#{date} #{formatted_tip_time}".to_time
    Time.zone.now.between?(start_time, start_time + 105.minutes)
  end

  def home_club
    home_team&.club
  end

  def away_club
    away_team&.club
  end
end
