class Competition < ApplicationRecord
  has_many :memberships
  has_many :clubs, through: :memberships
  has_many :games
  has_many :streams, through: :games
  has_many :live_stats, through: :games
end
