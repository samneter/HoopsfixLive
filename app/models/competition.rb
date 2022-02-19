class Competition < ApplicationRecord
  belongs_to :organisation
  #has_many :memberships
  #has_many :games, through: :memberships
  #has_many :teams, through: :memberships
  #has_many :games, through: :seasons
  #has_many :teams, through: :seasons
  #has_many :teams, through: :seasons
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged
end
