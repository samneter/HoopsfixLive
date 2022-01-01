class Competition < ApplicationRecord
  has_many :memberships
  has_many :clubs, through: :memberships
  has_many :games
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged
end
