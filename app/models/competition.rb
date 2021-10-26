class Competition < ApplicationRecord
  has_many :memberships
  has_many :clubs, through: :memberships
  has_many :games
end
