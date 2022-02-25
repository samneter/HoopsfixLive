class Competition < ApplicationRecord
  belongs_to :organisation
  has_many :memberships
  has_many :games
  has_many :teams, through: :memberships
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged
end
