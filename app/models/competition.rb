class Competition < ApplicationRecord
  has_many :streams
  has_many :live_stats
  has_many :memberships
  has_many :clubs, through: :memberships
  has_many :games
  has_many :streams, through: :games
end
