class Competition < ApplicationRecord
  belongs_to :organisation
  has_one :season
  has_many :memberships
  has_many :games, through: :memberships
  has_many :teams, through: :memberships
  #has_many :season_records
  has_many :seasons, through: :season_records
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged
end
