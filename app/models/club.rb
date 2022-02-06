class Club < ApplicationRecord
  has_many :teams
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged
end
