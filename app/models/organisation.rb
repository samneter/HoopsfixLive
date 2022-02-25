class Organisation < ApplicationRecord
  has_many :competitions
  has_one_attached :logo
  extend FriendlyId
  friendly_id :name, use: :slugged
end
