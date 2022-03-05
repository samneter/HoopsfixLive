# frozen_string_literal: true
class Team < ApplicationRecord
  belongs_to :club
  has_many :home_games, class_name: 'Game', foreign_key: 'home_team_id'
  has_many :away_games, class_name: 'Game', foreign_key: 'away_team_id'
  has_many :memberships
  has_many :competitions, through: :memberships
  # has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged

  def decorated_name
    from_display_name = display_name unless display_name.blank?
    from_display_name || club&.name || name
  end

  #def should_generate_new_friendly_id?
  #slug.blank? && name_changed?
  #end
end
